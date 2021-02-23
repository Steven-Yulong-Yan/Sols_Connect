using System;
using System.Collections.Generic;
using System.Text;

namespace TesterApp
{
  /*
   Add Methods to CharInput:
    - Add (char c){Adds c to current value}
    - GetValue(){returns current value}
   */
  public class CharInput
  {
      private string val = "";
      public void Add (char c)
      {
          val += c;
      }

    public string GetValue()
    {
      return val;
    }
  }
}
