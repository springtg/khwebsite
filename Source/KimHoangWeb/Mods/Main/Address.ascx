<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Address.ascx.cs" Inherits="Mods_Main_Address" %>
<script type="text/javascript">
    $(function () { //Document ready shorthand
        var $search = $('#search'); //Cache the element for faster DOM searching since we are using it more than once
        original_val = $search.val(); //Get the original value to test against. We use .val() to grab value="Search"
        $search.focus(function () { //When the user tabs/clicks the search box.
            if ($(this).val() === original_val) { //If the value is still the default, in this case, "Search"
                $(this).val(''); //If it is, set it to blank
            }
        })
			.blur(function () {//When the user tabs/clicks out of the input
			    if ($(this).val() === '') {//If the value is blank (such as the user clicking in it and clicking out)...
			        $(this).val(original_val); //... set back to the original value
			    }
			});
    });
</script>
<div class="kh_Adressbar">
    <div class="Addresstext">
    VPGD: Lầu 6 Master Building, 41-43 Trần Cao Vân, P6,Q3, TPHCM
     --Trụ sở:10/07 Chiến Lược P.Bình Trị Đông, Quận Bình Tân
    </div>
    <div class="Searchtext">
        <input id="search" type="text" name="search" value="Tìm kiếm...">
    </div>
</div>
