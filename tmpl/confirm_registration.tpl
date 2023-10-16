{include file="header.tpl"}

<div class="card">
    <div class="card-body">
        {if $success == 0}
<b>Account has not been confirmed:</b><br> Please check the link you received. It seems it is broken.
{else}
<b>Account has been confirmed:</b><br>
<br>

Your account has been successfully confirmed.
{/if}
        
    </div>
</div>



{include file="footer.tpl"}
