<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="usNavigation.ascx.cs" Inherits="KimHoangWeb.AdminCP.Mods.usNavigation" %>
            <div class="RadMenu RadMenu_IjobAdmin c1" id="RadMenu1">
                <ul class="rmHorizontal rmRootGroup">
                    <li class="rmItem rmFirst"><a class="rmLink" href="#"><span class="rmText">Hệ Thống</span></a>
                        <div class="rmSlide">
                            <ul class="rmVertical rmGroup rmLevel1">
                                <li class="rmItem rmFirst"><a class="rmLink" href="#"><span class="rmText">Giới Thiệu</span></a> </li>
                                <li class="rmItem rmLast"><a class="rmLink" href="#"><span class="rmText">Liên Hệ</span></a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="rmItem rmLast"><a class="rmLink" href="#"><span class="rmText">System</span></a>
                        <div class="rmSlide">
                            <ul class="rmVertical rmGroup rmLevel1">
                                <li class="rmItem rmFirst"><a class="rmLink" href="#"><span class="rmText">System 1</span></a>
                                </li>
                                <li class="rmItem"><a class="rmLink" href="#"><span class="rmText">System 2</span></a>
                                    <div class="rmSlide">
                                        <ul class="rmVertical rmGroup rmLevel2">
                                            <li class="rmItem rmFirst rmLast"><a class="rmLink" href="#"><span class="rmText">System
                                                2.2</span></a> </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="rmItem rmLast"><a class="rmLink" href="#"><span class="rmText">System 3</span></a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
                <input id="RadMenu1_ClientState" type="hidden" name="RadMenu1_ClientState" />
            </div>
            
            <script type="text/javascript">
		//<![CDATA[
                Sys.Application.initialize();
                Sys.Application.add_init(function () {
                    $create(Telerik.Web.UI.RadMenu, { "_childListElementCssClass": null, "_skin": "IjobAdmin", "attributes": {}, "clientStateFieldID": "RadMenu1_ClientState", "collapseAnimation": "{\"duration\":450}", "expandAnimation": "{\"duration\":450}", "itemData": [{ "items": [{ "navigateUrl": "~/Employer1.aspx" }, { "navigateUrl": "~/Employer3.aspx", "cssClass": "sf-menu"}] }, { "items": [{ "navigateUrl": "~/System1.aspx" }, { "items": [{ "navigateUrl": "~/System22.aspx"}] }, { "navigateUrl": "~/System3.aspx"}]}] }, null, null, $get("RadMenu1"));
                });
		      //]]>
            </script>