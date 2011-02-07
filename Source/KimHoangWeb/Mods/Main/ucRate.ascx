<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucRate.ascx.cs" Inherits="KimHoangWeb.Mods.Main.ucRate" %>
<script type="text/javascript" language="javascript" src="http://vnexpress.net/Service/Forex_Content.js"></script>
<div class="ratecontainer">
    <table style="margin: 0pt; border: 0px solid rgb(204, 204, 204); font-size: 10px;"
        border="0" cellpadding="1" cellspacing="1" width="100%">
        <tbody>
            <tr class="bgwhite">
                <td>
                    USD
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[0]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    EUR
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[1]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    GBP
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[2]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    HKD
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[3]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    JPY
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[5]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    AUD
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[7]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    CAD
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[8]);</script>
                </td>
            </tr>
            <tr class="bgwhite">
                <td>
                    SGD
                </td>
                <td>
                    <script type="text/javascript">                        document.write(vCosts[9]);</script>
                </td>
            </tr>
        </tbody>
    </table>
</div>
