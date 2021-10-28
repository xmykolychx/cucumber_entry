class CalculatorPage < SitePrism::Page
  set_url 'https://beginnertriathlete.com/discussion/training/cycling-zone-calc.asp'

  element :results, '/html/body/div[1]/div[1]/div[1]/div/div[3]/table[1]/tbody'

  element :weight, '#txtWeight'
  element :int1, '#txtCPWatts1'
  element :select1, '#ddlCPMinutes1'
  element :int2, '#txtCPWatts2'
  element :select2, '#ddlCPMinutes2'
  element :clc_btn, '#btnCalculateCP'
  element :abs_cp, '#spCPAbsWatts'
  element :wkg, '#spCPWkg'
  element :t_low, '#spCPCLLow4'
  element :t_high, '#spCPCLHigh4'
end