<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLinkSite.ascx.cs"
    Inherits="KimHoangWeb.Mods.Main.ucLinkSite" %>
<a class="linksite borderlinksite" target="_blank" href="http://www.vnu.edu.vn">
    <img border="0" alt="Đại học Quốc gia Hà Nội'" src="http://www.lic.vnu.vn/website//images/stories/DHQGHN.jpg">
    <br>
    Đại học Quốc gia Hà Nội </a>
    <a class="linksite" target="_blank" href="http://www.hus.edu.vn">
        <img border="0" alt="Trường ĐH KHTN'" src="http://www.lic.vnu.vn/website//images/stories/DHKHTN.jpg"><br>
        Trường ĐH KHTN</a>
<select name="sites" onchange="window.open(this.options[this.selectedIndex].value,'_blank'); sites.options[0].selected=true"
    style="width: 100%">
    <option>---Thư viện---</option>
    <option value="http://news.hut.edu.vn/library/">TV ĐHBK Hà nội</option>
    <option value="http://www.nlv.gov.vn/">TV Quốc gia VN</option>
    <option value="http://www.bl.uk">TV Quốc gia Anh</option>
    <option>---Kinh Tế---</option>
    <option value="http://vneconomy.vn/">vneconomy.vn</option>
    <option>---Tin Tức---</option>
    <option value="http://www21.24h.com.vn">24h.com.vn</option>
    <option value=" http://2sao.vietnamnet.vn">VietnamNet (2Sao)</option>
    <option value=" http://atpvietnam.com">ATPVietnam</option>
      <option>---Thể thao---</option>
</select>