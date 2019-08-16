<table class="Profile">
    <tr>
        <td class="profile-element"><a class="profile-link" href="#" data-touchpoint="customercenter" data-hashtag="#profileinformation" name="profileinformation">
                    {{translate 'My Profile'}}
                </a>
            <td>
    </tr>
    <tr data-permissions="{{purchasesPermissions}}" data-permissions-operator="OR">
        <td class="profile-element"><a class="profile-link" href="#" data-touchpoint="customercenter" data-hashtag="#purchases" name="orderhistory">
                    {{translate 'Orders'}}
                </a></td>
    </tr>
    <tr>
        <td class="profile-element"> <a class="profile-link" href="#" data-touchpoint="customercenter" data-hashtag="#wishlist" name="wishlist">
                {{translate 'Wishlist'}}<div class="numberCircle">{{wishlistItems}}</div>
            </a></td>
    </tr>
    <tr>
        <td class="profile-element">
            <a class="profile-link" href="#" data-touchpoint="customercenter" data-hashtag="#overview" name="accountoverview">
            {{translate 'Account Info'}}
            </a>
        </td>
    </tr>
    <!--     {{#each productLists}} {{ items.length }} {{/each}} -->
    <!-- <tr>
        <td class="profile-element"> <a class="profile-link" href="#" data-touchpoint="customercenter" data-hashtag="#wishlist" name="wishlist">
                {{translate 'Wishlist'}}
            </a></td>
    </tr> -->
    <tr>
        <td class="profile-element">
            <a class="profile-link" href="#" data-touchpoint="logout" name="signout">
            {{translate 'Logout'}}
            </a>
        </td>
    </tr>
</table>
{{!---- Use the following context variables when customizing this template: isProductListsEnabled (Boolean) isSingleList (Boolean) isCaseModuleEnabled (Boolean) productListsReady (Boolean) productLists (Array) purchasesPermissions (String) returnsPermissions (String) ----}}