{include file="header.tpl"}
    <div class="card">
<div class="card-body">
{if $activated == 0}
<b>Account not activated</b><br><br>
Account has been already activated or you have provide invalid activation code.
Please check link you received.
{else}
<b>Account activated</b><br><br>
{/if}
</div>
</div>


{include file="footer.tpl"}
