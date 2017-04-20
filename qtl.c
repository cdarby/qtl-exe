/* Charlotte Darby cdarby@jhu.edu */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

//Functions
unsigned reverse(unsigned x);
unsigned int crc32a(unsigned char *message, int len);
void Initialize(const unsigned int seed);
static void Twist();
unsigned int ExtractU32();


// Constants, as static and enum 
/*static float MAX_TWIST = 4294967295.0;
static int LOOP_ITERS = 100;
enum {
    N = 624,
    M = 397,
    R = 31,
    A = 0x9908B0DF,
    F = 1812433253,
    U = 11,
    S = 7,
    B = 0x9D2C5680,
    T = 15,
    C = 0xEFC60000,
    L = 18,
    MASK_LOWER = (1ull << R) - 1,
    MASK_UPPER = (1ull << R)
};*/

// Constants, as #define macros
#define MAX_TWIST 4294967295.0
#define LOOP_ITERS 5000
#define N 624
#define M 397
#define R 31
#define A 0x9908B0DF
#define F 1812433253
#define U 11
#define S 7
#define B 0x9D2C5680
#define T 15
#define C 0xEFC60000
#define L 18
#define MASK_LOWER (1ull << R) - 1
#define MASK_UPPER (1ull << R)


//Variables
static unsigned int mt[N];
static unsigned short index;

int main(int argc, char ** argv)
{
	FILE *infile;
	unsigned char *buffer;
	long numbytes;
	unsigned int seed;

	infile = fopen(argv[0], "r");
	if(infile == NULL)
	    return 1; 
	 
	/* Get the number of bytes */
	fseek(infile, 0L, SEEK_END);
	numbytes = ftell(infile);
	 
	/* reset the file position indicator to 
	the beginning of the file */
	fseek(infile, 0L, SEEK_SET);	

	buffer = (unsigned char*)calloc(numbytes, sizeof(unsigned char));	
	 
	/* memory error */
	if(buffer == NULL)
	    return 1;
	 
	/* copy all the text into the buffer */
	fread(buffer, sizeof(unsigned char), numbytes, infile);
	fclose(infile);

	/* Get seed from hash of program itself */
	seed = crc32a(buffer,numbytes);
	Initialize(seed);
	//fprintf(stderr,"%d\n",seed);

	/* Generate Unif(0,1) numbers as the "phenotype" (distribution) */
	int flag;
	float x, xf, y, yf;
	float s, q;
	for (int iters = 0; iters < LOOP_ITERS; iters++) {
		flag = 0;
		while (flag == 0) {
			//convert to Unif. number b/w -1 and 1
			xf = ((float) ExtractU32()) / MAX_TWIST * 2.0 - 1.0;
			yf = ((float) ExtractU32()) / MAX_TWIST * 2.0 - 1.0;
			s = xf*xf + yf*yf;
			if (s < 1) {
				flag = 1;
				q = sqrt(-2.0 * log(s) / s);
				x = xf * q; // N(0,1)
				y = yf * q; // N(0,1) independent
			}
		}
		fprintf(stdout, "%f\n%f\n",x,y); 
	}

}	


/* Reverses (reflects) bits in a 32-bit word.
   http://www.hackersdelight.org/hdcodetxt/crc.c.txt */
unsigned reverse(unsigned x) {
   x = ((x & 0x55555555) <<  1) | ((x >>  1) & 0x55555555);
   x = ((x & 0x33333333) <<  2) | ((x >>  2) & 0x33333333);
   x = ((x & 0x0F0F0F0F) <<  4) | ((x >>  4) & 0x0F0F0F0F);
   x = (x << 24) | ((x & 0xFF00) << 8) |
       ((x >> 8) & 0xFF00) | (x >> 24);
   return x;
}

/* This is the basic CRC algorithm with no optimizations. It follows the
   logic circuit as closely as possible. 
   http://www.hackersdelight.org/hdcodetxt/crc.c.txt */

unsigned int crc32a(unsigned char *message, int len) {
   int i, j, k;
   unsigned int byte, crc;

   i = 0;
   crc = 0xFFFFFFFF;
   for (k = 0; k < len; k++) {
      byte = message[i];            // Get next byte.
      byte = reverse(byte);         // 32-bit reversal.
      for (j = 0; j <= 7; j++) {    // Do eight times.
         if ((int)(crc ^ byte) < 0)
              crc = (crc << 1) ^ 0x04C11DB7;
         else crc = crc << 1;
         byte = byte << 1;          // Ready next msg bit.
      }
      i = i + 1;
   }
   return reverse(~crc);
}

/* https://en.wikipedia.org/wiki/Mersenne_Twister#C.2FC.2B.2B_implementation */

// Re-init with a given seed
void Initialize(const unsigned int  seed) {
    unsigned int  i;
    mt[0] = seed;
    for ( i = 1; i < N; i++ ) {
        mt[i] = (F * (mt[i - 1] ^ (mt[i - 1] >> 30)) + i);
    }
    index = N;
}

static void Twist() {
    unsigned int i, x, xA;
    for ( i = 0; i < N; i++ ) {
        x = (mt[i] & MASK_UPPER) + (mt[(i + 1) % N] & MASK_LOWER);
        xA = x >> 1;
        if ( x & 0x1 )
            xA ^= A;
        mt[i] = mt[(i + M) % N] ^ xA;
    }
    index = 0;
}

// Obtain a 32-bit random number
unsigned int ExtractU32() {
    unsigned int y;
    int       i = index;
    if ( index >= N ) {
        Twist();
        i = index;
    }

    y = mt[i];
    index = i + 1;
    y ^= (mt[i] >> U);
    y ^= (y << S) & B;
    y ^= (y << T) & C;
    y ^= (y >> L);
    return y;
}
