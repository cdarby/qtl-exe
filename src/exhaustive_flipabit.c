/* from https://github.com/mschatz/flipabit */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** argv)
{
  if (argc != 5)
  {
    fprintf(stderr, "flipabit file newfile byte bit\n");
    return 1;
  }

  char * infile = argv[1];
  char * outfile  = argv[2];
  int editbyte = atoi(argv[3]);
  int editbit = atoi(argv[4]);

  fprintf(stderr, "Editing \"%s\" into \"%s\" editing byte %d bit %d\n", infile, outfile, editbyte,editbit);

  FILE * in = fopen(infile, "rb");
  FILE * out = fopen(outfile, "wb");

  if (!in) { fprintf(stderr, "Couldn\'t open %s for reading\n", infile); return 1; }
  if (!out) { fprintf(stderr, "Couldn\'t open %s for writing\n", outfile); return 1; }

  int buffersize = 1024;
  char buffer[buffersize];

  int bytes = 0;
  int totalbytes = 0;
  int bitsflipped = 0;

  while ((bytes = fread(buffer, 1, 1, in)) != 0)
  {
    if (totalbytes == editbyte)
    {
      fprintf(stderr, "-- flipping %d bit in byte %d\n", editbit, totalbytes);
      switch (editbit) {
      case 0: 
        buffer[0] = buffer[0] ^ 0x01;
      case 1:
        buffer[0] = buffer[0] ^ 0x02;
      case 2:
        buffer[0] = buffer[0] ^ 0x04;
      case 3:
        buffer[0] = buffer[0] ^ 0x08;
      case 4:
        buffer[0] = buffer[0] ^ 0x10;
      case 5:
        buffer[0] = buffer[0] ^ 0x20;
      case 6:
        buffer[0] = buffer[0] ^ 0x40;
      case 7:
        buffer[0] = buffer[0] ^ 0x80;
      }
      bitsflipped++;
    }
    fwrite(buffer, 1, bytes, out);
    totalbytes += bytes;
  }

  fclose(in);
  fclose(out);

  fprintf(stderr, "copied %d bytes and edited %d bits\n", totalbytes, bitsflipped);
  return 0;
}
