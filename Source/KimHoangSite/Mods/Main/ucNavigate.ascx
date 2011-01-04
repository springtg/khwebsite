<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucNavigate.ascx.cs" Inherits="Mods_Main_ucNavigate" %>
<link type="text/css" href="css/redmond/jquery-ui-1.8.6.custom.css" rel="stylesheet" />
<link type="text/css" href="css/Main.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/cloud-carousel.1.0.4.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#carousel2").CloudCarousel({
            height: 50,
            width: 700,
            reflHeight: 30,
            reflGap: 2,
            autoRotate: 'left',
            autoRotateDelay:1500,
            titleBox: $('#da-vinci-title'),
            altBox: $('#da-vinci-alt'),
            buttonLeft: $('#but1'),
            buttonRight: $('#but2'),
            xPos: 300,
            yPos: 50,
            xRadius: 0,
            yRadius: 0,
            speed: 0.15,
            mouseWheel: true,
            bringToFront: true
        });
    });
</script>
<div id="carousel2" style="width: 570px; height: 204px; margin-top: -0px; background: url(&quot;/images/carousel/bg.jpg&quot;) repeat scroll 0% 0% transparent;
    overflow: hidden; position: relative;">
    <div style="position: absolute; width: 100%; height: 100%; display: block;">
        <img class="cloudcarousel" src="Img/tv.png" alt="Tư vấn chiến lược, tư vấn thương hiệu, tư vấn doanh nghiệp"
            title="Dịch vụ Tư Vấn">
        <img class="cloudcarousel" src="Img/thiep.png" alt="Thiết kết Lịch, thiệp, quà lưu niệm"
            title="Thiết kế và In ấn">
        <img class="cloudcarousel" src="Img/hosting.png" alt="Cung câp domain, thue Hosting" title="Dịch vụ Hosting">
        <img class="cloudcarousel" src="Img/web.png" alt="Thiết kế và xây dựng web site cho doanh ngiệp" title="Xây dựng WebSite">
        <img class="cloudcarousel" src="Img/hosting2.png" alt="Cung cấp phần mềm quản lý"
            title="Dịch vụ phần mền">
        <!-- ************************* -->
        <!-- ************************ -->
        <div style="display: block;" id="da-vinci-title">
            The Virgin and Child with St. Anne</div>
        <div style="display: block;" id="da-vinci-alt">
            Oil on panel, circa 1510.</div>
        <div id="but1" class="carouselLeft" style="position: absolute; top: 20px; right: 64px;
            display: inline;">
        </div>
        <div id="but2" class="carouselRight" style="position: absolute; top: 20px; right: 20px;
            display: inline;">
        </div>
    </div>
</div>
