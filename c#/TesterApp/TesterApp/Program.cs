using System;
using System.Reflection.Metadata.Ecma335;

namespace TesterApp
{
  class Program
  {
    static void Main(string[] args)
    {
      CharInput tester = new CharInput();
      tester.Add('1');
      tester.Add('c');
      tester.Add('2');
      Console.WriteLine(tester.GetValue());
      /*Expected "1c2"*/

      NumInput tester2 = new NumInput();
      tester2.Add('1');
      tester2.Add('c');
      tester2.Add('2');
      Console.WriteLine(tester2.GetValue());
      /*Expected "12"*/
    }
  }
}
