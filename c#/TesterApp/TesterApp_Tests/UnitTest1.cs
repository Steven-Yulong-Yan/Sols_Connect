using System;
using Microsoft.VisualStudio.TestPlatform.TestHost;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TesterApp;

namespace TesterApp_Tests
{
  [TestClass]
  public class UnitTest1
  {
    [TestMethod]
    public void CharInput_Works()
    {
      CharInput ti = new CharInput();
      ti.Add('1');
      ti.Add('c');
      ti.Add('2');
      Assert.IsTrue(ti.GetValue() == "1c2", "CharInput value doesn't match expected");
    }

    [TestMethod]
    public void NumInput_InheritsCharInput()
    {
      Assert.IsTrue(typeof(NumInput).IsSubclassOf(typeof(CharInput)), "NumInput doesn't inherit CharInput");
    }

    [TestMethod]
    public void NumInput_Works()
    {
      NumInput ti = new NumInput();
      ti.Add('1');
      ti.Add('c');
      ti.Add('2');
      Assert.IsTrue(ti.GetValue() == "12", "NumInput value doesn't match expected");
    }



  }
}
