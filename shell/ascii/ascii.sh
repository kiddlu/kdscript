#!/bin/bash

html_file=`mktemp --suffix=.html`
#trap "rm -f $html_file" EXIT

cat <<'HTMLEND' > $html_file
<!DOCTYPE html>
<!-- saved from url=(0026)http://ss64.com/ascii.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="Description" content="ASCII Table, ASCII is a numeric computer code used to represent characters from the alphabet. Each character is represented by a number. ASCII codes from 0 - 127 are identical to Unicode.">
<link rel="STYLESHEET" href="./ASCII Table - ASCII character codes with decimal(html), hex and octal conversion chart _ SS64.com_files/main.css" type="text/css">
<title>ASCII Table - ASCII character codes with decimal(html), hex and octal conversion chart | SS64.com</title>
<!-- ASCII was originally an acronym for the American Standard Code for Information Interchange.  -->
<style type="text/css">
table {
border: 2px;
border-collapse: collapse;
padding: 0;
border-spacing: 0;
background-color: #eee;
}

th{ background-color: #aaa;}
td, th{
border: 1px solid #999;
padding: 0px 6px;
font-size: 80%;
font-family:Helvetica,Arial,Verdana,sans-serif;
text-align:center;
}


.first {
border-left: solid #555;}
.character {
background-color: #fff;
border-right: solid #222;}
</style>
<style id="holderjs-style" type="text/css"></style></head>
<body class=" __plain_text_READY__">
<h1>ASCII/Unicode Table</h1>
<p>ASCII is a numeric computer code used to represent characters from the English alphabet. <br>
Most HTML escapes are in decimal so the letter A can be written as <span class="code">&amp;#65;</span></p>
<table>
<colgroup>
<col class="first">
<col span="2">
<col class="character">
<col span="4">
<col class="character">
<col span="3">
<col class="character">
<col span="3">
<col class="character">
</colgroup>
<tbody><tr>
<th><abbr title="Decimal">Dec</abbr></th>
<th><abbr title="Hex">Hx</abbr></th>
<th><abbr title="Octal">Oct</abbr></th>
<th>Ascii Character</th>
<th><abbr title="Decimal">Dec</abbr></th>
<th><abbr title="Hex">Hx</abbr></th>
<th><abbr title="Octal">Oct</abbr></th>
<th><abbr title="HTML entities">Html</abbr></th>
<th>Ascii Character</th>
<th><abbr title="Decimal">Dec</abbr></th>
<th><abbr title="Hex">Hx</abbr></th>
<th><abbr title="Octal">Oct</abbr></th>
<th>Ascii Character</th>
<th><abbr title="Decimal">Dec</abbr></th>
<th><abbr title="Hex">Hx</abbr></th>
<th><abbr title="Octal">Oct</abbr></th>
<th>Ascii Character</th>
</tr>
<tr>
<td>0</td>
<td><abbr title="0x00">0</abbr></td>
<td>0</td>
<td>NUL (Null)</td>
<td>32</td>
<td><abbr title="0x20">20</abbr></td>
<td>40</td>
<td>&amp;nbsp;</td>
<td>[Space]</td>
<td>64</td>
<td><abbr title="0x40">40</abbr></td>
<td>100</td>
<td>@</td>
<td>96</td>
<td><abbr title="0x60">60</abbr></td>
<td>140</td>
<td>`</td>
</tr>
<tr>
<td>1</td>
<td><abbr title="0x01">1</abbr></td>
<td>1</td>
<td><abbr title="Start of Header">SOH</abbr></td>
<td>33</td>
<td><abbr title="0x21">21</abbr></td>
<td>41</td>
<td>&amp;#33;</td>
<td>!</td>
<td>65</td>
<td><abbr title="0x41">41</abbr></td>
<td>101</td>
<td>A</td>
<td>97</td>
<td><abbr title="0x61">61</abbr></td>
<td>141</td>
<td>a</td>
</tr>
<tr>
<td>2</td>
<td><abbr title="0x02">2</abbr></td>
<td>2</td>
<td><abbr title="Start of Text">STX</abbr></td>
<td>34</td>
<td><abbr title="0x22">22</abbr></td>
<td>42</td>
<td>&amp;quot;</td>
<td>"</td>
<td>66</td>
<td><abbr title="0x42">42</abbr></td>
<td>102</td>
<td>B</td>
<td>98</td>
<td><abbr title="0x62">62</abbr></td>
<td>142</td>
<td>b</td>
</tr>
<tr>
<td>3</td>
<td><abbr title="0x03">3</abbr></td>
<td>3</td>
<td><abbr title="End of Text">ETX</abbr></td>
<td>35</td>
<td><abbr title="0x23">23</abbr></td>
<td>43</td>
<td>#</td>
<td>#</td>
<td>67</td>
<td><abbr title="0x43">43</abbr></td>
<td>103</td>
<td>C</td>
<td>99</td>
<td><abbr title="0x63">63</abbr></td>
<td>143</td>
<td>c</td>
</tr>
<tr>
<td>4</td>
<td><abbr title="0x04">4</abbr></td>
<td>4</td>
<td><abbr title="End of Transmission"><a href="http://en.wikipedia.org/wiki/End-of-transmission_character">EOT</a></abbr></td>
<td>36</td>
<td><abbr title="0x24">24</abbr></td>
<td>44</td>
<td>$</td>
<td>$</td>
<td>68</td>
<td><abbr title="0x44">44</abbr></td>
<td>104</td>
<td>D</td>
<td>100</td>
<td><abbr title="0x64">64</abbr></td>
<td>144</td>
<td>d</td>
</tr>
<tr>
<td>5</td>
<td><abbr title="0x05">5</abbr></td>
<td>5</td>
<td><abbr title="Enquiry"><a href="http://en.wikipedia.org/wiki/Enquiry_character">ENQ</a></abbr></td>
<td>37</td>
<td><abbr title="0x25">25</abbr></td>
<td>45</td>
<td>%</td>
<td>%</td>
<td>69</td>
<td><abbr title="0x45">45</abbr></td>
<td>105</td>
<td>E</td>
<td>101</td>
<td><abbr title="0x65">65</abbr></td>
<td>145</td>
<td>e</td>
</tr>
<tr>
<td>6</td>
<td><abbr title="0x06">6</abbr></td>
<td>6</td>
<td><abbr title="Acknowledgement"><a href="http://en.wikipedia.org/wiki/Acknowledge_character">ACK</a></abbr></td>
<td>38</td>
<td><abbr title="0x26">26</abbr></td>
<td>46</td>
<td>&amp;amp;</td>
<td>&amp;</td>
<td>70</td>
<td><abbr title="0x46">46</abbr></td>
<td>106</td>
<td>F</td>
<td>102</td>
<td><abbr title="0x66">66</abbr></td>
<td>146</td>
<td>f</td>
</tr>
<tr>
<td>7</td>
<td><abbr title="0x07">7</abbr></td>
<td>7</td>
<td><abbr title="Audible Bell code"><a href="http://en.wikipedia.org/wiki/Bell_character">BEL</a></abbr></td>
<td>39</td>
<td><abbr title="0x27">27</abbr></td>
<td>47</td>
<td><abbr title="typewriter apostrophe"><a href="https://en.wikipedia.org/wiki/Apostrophe#Computing">&amp;#39;</a></abbr></td>
<td>'</td>
<td>71</td>
<td><abbr title="0x47">47</abbr></td>
<td>107</td>
<td>G</td>
<td>103</td>
<td><abbr title="0x67">67</abbr></td>
<td>147</td>
<td>g</td>
</tr>
<tr>
<td>8</td>
<td><abbr title="0x08">8</abbr></td>
<td>10</td>
<td><abbr title="Backspace (Teletype)"><a href="http://en.wikipedia.org/wiki/Backspace">BS</a> Backspace</abbr></td>
<td>40</td>
<td><abbr title="0x28">28</abbr></td>
<td>50</td>
<td>(</td>
<td>(</td>
<td>72</td>
<td><abbr title="0x48">48</abbr></td>
<td>110</td>
<td>H</td>
<td>104</td>
<td><abbr title="0x68">68</abbr></td>
<td>150</td>
<td>h</td>
</tr>
<tr>
<td>9</td>
<td><abbr title="0x09">9</abbr></td>
<td>11</td>
<td><abbr title="Horizontal Tab">TAB</abbr></td>
<td>41</td>
<td><abbr title="0x29">29</abbr></td>
<td>51</td>
<td>)</td>
<td>)</td>
<td>73</td>
<td><abbr title="0x49">49</abbr></td>
<td>111</td>
<td>I</td>
<td>105</td>
<td><abbr title="0x69">69</abbr></td>
<td>151</td>
<td>i</td>
</tr>
<tr>
<td>10</td>
<td><abbr title="0x0A">A</abbr></td>
<td>12</td>
<td><a href="http://en.wikipedia.org/wiki/Newline">LF</a> Line Feed</td>
<td>42</td>
<td><abbr title="0x2A">2A</abbr></td>
<td>52</td>
<td>*</td>
<td>*</td>
<td>74</td>
<td><abbr title="0x4A">4A</abbr></td>
<td>112</td>
<td>J</td>
<td>106</td>
<td><abbr title="0x6A">6A</abbr></td>
<td>152</td>
<td>j</td>
</tr>
<tr>
<td>11</td>
<td><abbr title="0x0B">B</abbr></td>
<td>13</td>
<td><abbr title="Vertical Tab">VT</abbr></td>
<td>43</td>
<td><abbr title="0x2B">2B</abbr></td>
<td>53</td>
<td>+</td>
<td>+</td>
<td>75</td>
<td><abbr title="0x4B">4B</abbr></td>
<td>113</td>
<td>K</td>
<td>107</td>
<td><abbr title="0x6B">6B</abbr></td>
<td>153</td>
<td>k</td>
</tr>
<tr>
<td>12</td>
<td><abbr title="0x0C">C</abbr></td>
<td>14</td>
<td><a href="http://en.wikipedia.org/wiki/Page_break#Form_feed">FF</a> Form Feed</td>
<td>44</td>
<td><abbr title="0x2C">2C</abbr></td>
<td>54</td>
<td>,</td>
<td>,</td>
<td>76</td>
<td><abbr title="0x4C">4C</abbr></td>
<td>114</td>
<td>L</td>
<td>108</td>
<td><abbr title="0x6C">6C</abbr></td>
<td>154</td>
<td>l</td>
</tr>
<tr>
<td>13</td>
<td><abbr title="0x0D">D</abbr></td>
<td>15</td>
<td><a href="http://en.wikipedia.org/wiki/Carriage_return">CR</a> Carriage Return</td>
<td>45</td>
<td><abbr title="0x2D">2D</abbr></td>
<td>55</td>
<td>-</td>
<td>-</td>
<td>77</td>
<td><abbr title="0x4D">4D</abbr></td>
<td>115</td>
<td>M</td>
<td>109</td>
<td><abbr title="0x6D">6D</abbr></td>
<td>155</td>
<td>m</td>
</tr>
<tr>
<td>14</td>
<td><abbr title="0x0E">E</abbr></td>
<td>16</td>
<td><abbr title="Shift out"><a href="http://en.wikipedia.org/wiki/Shift_Out_and_Shift_In_characters">SO</a></abbr></td>
<td>46</td>
<td><abbr title="0x2E">2E</abbr></td>
<td>56</td>
<td>.</td>
<td>.</td>
<td>78</td>
<td><abbr title="0x4E">4E</abbr></td>
<td>116</td>
<td>N</td>
<td>110</td>
<td><abbr title="0x6E">6E</abbr></td>
<td>156</td>
<td>n</td>
</tr>
<tr>
<td>15</td>
<td><abbr title="0x0F">F</abbr></td>
<td>17</td>
<td><abbr title="Shift In"><a href="http://en.wikipedia.org/wiki/Shift_Out_and_Shift_In_characters">SI</a></abbr></td>
<td>47</td>
<td><abbr title="0x2F">2F</abbr></td>
<td>57</td>
<td>/</td>
<td>/</td>
<td>79</td>
<td><abbr title="0x4F">4F</abbr></td>
<td>117</td>
<td>O</td>
<td>111</td>
<td><abbr title="0x6F">6F</abbr></td>
<td>157</td>
<td>o</td>
</tr>
<tr>
<td>16</td>
<td><abbr title="0x10">10</abbr></td>
<td>20</td>
<td><abbr title="Data Link Escape"><a href="http://www.lammertbies.nl/comm/info/ascii-characters.html">DLE</a></abbr></td>
<td>48</td>
<td><abbr title="0x30">30</abbr></td>
<td>60</td>
<td>0</td>
<td>0</td>
<td>80</td>
<td><abbr title="0x50">50</abbr></td>
<td>120</td>
<td>P</td>
<td>112</td>
<td><abbr title="0x70">70</abbr></td>
<td>160</td>
<td>p</td>
</tr>
<tr>
<td>17</td>
<td><abbr title="0x11">11</abbr></td>
<td>21</td>
<td><abbr title="Device control 1">DC1</abbr></td>
<td>49</td>
<td><abbr title="0x31">31</abbr></td>
<td>61</td>
<td>1</td>
<td>1</td>
<td>81</td>
<td><abbr title="0x51">51</abbr></td>
<td>121</td>
<td>Q</td>
<td>113</td>
<td><abbr title="0x71">71</abbr></td>
<td>161</td>
<td>q</td>
</tr>
<tr>
<td>18</td>
<td><abbr title="0x12">12</abbr></td>
<td>22</td>
<td><abbr title="Device control 2">DC2</abbr></td>
<td>50</td>
<td><abbr title="0x32">32</abbr></td>
<td>62</td>
<td>2</td>
<td>2</td>
<td>82</td>
<td><abbr title="0x52">52</abbr></td>
<td>122</td>
<td>R</td>
<td>114</td>
<td><abbr title="0x72">72</abbr></td>
<td>162</td>
<td>r</td>
</tr>
<tr>
<td>19</td>
<td><abbr title="0x13">13</abbr></td>
<td>23</td>
<td><abbr title="Device control 3">DC3</abbr></td>
<td>51</td>
<td><abbr title="0x33">33</abbr></td>
<td>63</td>
<td>3</td>
<td>3</td>
<td>83</td>
<td><abbr title="0x53">53</abbr></td>
<td>123</td>
<td>S</td>
<td>115</td>
<td><abbr title="0x73">73</abbr></td>
<td>163</td>
<td>s</td>
</tr>
<tr>
<td>20</td>
<td><abbr title="0x14">14</abbr></td>
<td>24</td>
<td><abbr title="Device control 4">DC4</abbr></td>
<td>52</td>
<td><abbr title="0x34">34</abbr></td>
<td>64</td>
<td>4</td>
<td>4</td>
<td>84</td>
<td><abbr title="0x54">54</abbr></td>
<td>124</td>
<td>T</td>
<td>116</td>
<td><abbr title="0x74">74</abbr></td>
<td>164</td>
<td>t</td>
</tr>
<tr>
<td>21</td>
<td><abbr title="0x15">15</abbr></td>
<td>25</td>
<td><abbr title="Negative-acknowledge"><a href="http://en.wikipedia.org/wiki/Negative-acknowledge_character">NAK</a></abbr></td>
<td>53</td>
<td><abbr title="0x35">35</abbr></td>
<td>65</td>
<td>5</td>
<td>5</td>
<td>85</td>
<td><abbr title="0x55">55</abbr></td>
<td>125</td>
<td>U</td>
<td>117</td>
<td><abbr title="0x75">75</abbr></td>
<td>165</td>
<td>u</td>
</tr>
<tr>
<td>22</td>
<td><abbr title="0x16">16</abbr></td>
<td>26</td>
<td><abbr title="Synchronous idle"><a href="http://en.wikipedia.org/wiki/Synchronous_idle">SYN</a></abbr></td>
<td>54</td>
<td><abbr title="0x36">36</abbr></td>
<td>66</td>
<td>6</td>
<td>6</td>
<td>86</td>
<td><abbr title="0x56">56</abbr></td>
<td>126</td>
<td>V</td>
<td>118</td>
<td><abbr title="0x76">76</abbr></td>
<td>166</td>
<td>v</td>
</tr>
<tr>
<td>23</td>
<td><abbr title="0x17">17</abbr></td>
<td>27</td>
<td><abbr title="End of Trans. block"><a href="http://en.wikipedia.org/wiki/End_Transmission_Block_character">ETB</a></abbr></td>
<td>55</td>
<td><abbr title="0x37">37</abbr></td>
<td>67</td>
<td>7</td>
<td>7</td>
<td>87</td>
<td><abbr title="0x57">57</abbr></td>
<td>127</td>
<td>W</td>
<td>119</td>
<td><abbr title="0x77">77</abbr></td>
<td>167</td>
<td>w</td>
</tr>
<tr>
<td>24</td>
<td><abbr title="0x18">18</abbr></td>
<td>30</td>
<td><abbr title="Cancel"><a href="http://en.wikipedia.org/wiki/Cancel_character">CAN</a></abbr></td>
<td>56</td>
<td><abbr title="0x38">38</abbr></td>
<td>70</td>
<td>8</td>
<td>8</td>
<td>88</td>
<td><abbr title="0x58">58</abbr></td>
<td>130</td>
<td>X</td>
<td>120</td>
<td><abbr title="0x78">78</abbr></td>
<td>170</td>
<td>x</td>
</tr>
<tr>
<td>25</td>
<td><abbr title="0x19">19</abbr></td>
<td>31</td>
<td><abbr title="End of Medium/End of Tape">EM</abbr></td>
<td>57</td>
<td><abbr title="0x39">39</abbr></td>
<td>71</td>
<td>9</td>
<td>9</td>
<td>89</td>
<td><abbr title="0x59">59</abbr></td>
<td>131</td>
<td>Y</td>
<td>121</td>
<td><abbr title="0x79">79</abbr></td>
<td>171</td>
<td>y</td>
</tr>
<tr>
<td>26</td>
<td><abbr title="0x1A">1A</abbr></td>
<td>32</td>
<td><abbr title="Substitute"><a href="http://en.wikipedia.org/wiki/Substitute_character">SUB</a></abbr> (EOF)</td>
<td>58</td>
<td><abbr title="0x3A">3A</abbr></td>
<td>72</td>
<td>:</td>
<td>:</td>
<td>90</td>
<td><abbr title="0x5A">5A</abbr></td>
<td>132</td>
<td>Z</td>
<td>122</td>
<td><abbr title="0x7A">7A</abbr></td>
<td>172</td>
<td>z</td>
</tr>
<tr>
<td>27</td>
<td><abbr title="0x1B">1B</abbr></td>
<td>33</td>
<td>ESC (Escape)</td>
<td>59</td>
<td><abbr title="0x3B">3B</abbr></td>
<td>73</td>
<td>;</td>
<td>;</td>
<td>91</td>
<td><abbr title="0x5B">5B</abbr></td>
<td>133</td>
<td>[</td>
<td>123</td>
<td><abbr title="0x7B">7B</abbr></td>
<td>173</td>
<td>{</td>
</tr>
<tr>
<td>28</td>
<td><abbr title="0x1C">1C</abbr></td>
<td>34</td>
<td><abbr title="File Separator">FS</abbr></td>
<td>60</td>
<td><abbr title="0x3C">3C</abbr></td>
<td>74</td>
<td>&amp;lt;</td>
<td>&lt;</td>
<td>92</td>
<td><abbr title="0x5C">5C</abbr></td>
<td>134</td>
<td>\</td>
<td>124</td>
<td><abbr title="0x7C">7C</abbr></td>
<td>174</td>
<td>|</td>
</tr>
<tr>
<td>29</td>
<td><abbr title="0x1D">1D</abbr></td>
<td>35</td>
<td><abbr title="Group Separator">GS</abbr></td>
<td>61</td>
<td><abbr title="0x3D">3D</abbr></td>
<td>75</td>
<td>=</td>
<td>=</td>
<td>93</td>
<td><abbr title="0x5D">5D</abbr></td>
<td>135</td>
<td>]</td>
<td>125</td>
<td><abbr title="0x7D">7D</abbr></td>
<td>175</td>
<td>}</td>
</tr>
<tr>
<td>30</td>
<td><abbr title="0x1E">1E</abbr></td>
<td>36</td>
<td><abbr title="Record Separator">RS</abbr></td>
<td>62</td>
<td><abbr title="0x3E">3E</abbr></td>
<td>76</td>
<td>&amp;gt;</td>
<td>&gt;</td>
<td>94</td>
<td><abbr title="0x5E">5E</abbr></td>
<td>136</td>
<td>^</td>
<td>126</td>
<td><abbr title="0x7E">7E</abbr></td>
<td>176</td>
<td>~</td>
</tr>
<tr>
<td>31</td>
<td><abbr title="0x1F">1F</abbr></td>
<td>37</td>
<td><abbr title="Unit Separator (alternative to comma or tab)"><a href="https://en.wikipedia.org/wiki/Unit_separator#Field_separators">US</a></abbr></td>
<td>63</td>
<td><abbr title="0x3F">3F</abbr></td>
<td>77</td>
<td>?</td>
<td>?</td>
<td>95</td>
<td><abbr title="0x5F">5F</abbr></td>
<td>137</td>
<td>_</td>
<td>127</td>
<td><abbr title="0x7F">7F</abbr></td>
<td>177</td>
<td><a href="http://en.wikipedia.org/wiki/Delete_character">DEL</a></td>
</tr>
</tbody></table>
<p>Ascii codes from 0 - 127 are identical to Unicode.
&nbsp;Codes 128 - 255 (Extended ASCII) have been superceeded by Unicode.</p>
<p> Windows CR+LF is <a href="http://ss64.com/vb/chr.html">Chr</a>(13) followed by <a href="http://ss64.com/vb/chr.html">Chr</a>(10) or <span class="code">`r`n</span> in PowerShell</p>
<p>Adding 32  (or  flipping the sixth binary bit) will <a href="http://ss64.com/case.html">convert upper case</a> to lower.<br>
</p>
<p><span class="quote"><i>“Why shouldn’t we give our teachers a license to obtain software, all software, any software, for nothing? Does anyone demand a licensing fee, each time a child is taught the alphabet?” ~ William Gibson</i></span></p>
<hr>
</div></html>
HTMLEND

case `uname` in
    *CYGWIN*) open `cygpath -alw $html_file` ;;
    Linux) xdg-open $html_file;;
esac
