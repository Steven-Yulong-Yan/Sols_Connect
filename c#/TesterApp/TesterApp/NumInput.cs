using System;
using System.Collections.Generic;
using System.Text;

namespace TesterApp
{
  /*
   CharInput needs to inherit from TextInput.
   Change Add(char c) to only add numeric values to the current value.
  */
  public class NumInput : CharInput
  {
    private string val = "";
    public void Add(char c)
    {
      if (char.IsDigit(c) == true)
      {
        val += c;
      }
    }

    public string GetValue()
    {
      return val;
    }
  }
}
