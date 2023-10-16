{include file="header.tpl"}


<div class="card">
    <div class="card-body">
        <h3>Your Deposit status</h3><br>
<br>
{if $process eq 'yes' || $frm.m_status eq 'success'}
We have received your deposit. Thank you!
{else}
We have not received your deposit. Please try again.
{/if}
        
    </div>
</div>

{include file="footer.tpl"}