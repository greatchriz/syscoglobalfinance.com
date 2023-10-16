{include file="header.tpl"}


                
    <h3>Your deposits:</h3>
    
    <b>Total: {$currency_sign}{$total}</b>
    {foreach from=$plans item=p}
        <div class="col-xl-4 col-lg-12 col-sm-12 ">
                        <div class="card">
                            <div class="card-header border-0 pb-0">
                                    <h2 class="card-title">{$p.name}</h2>
                            </div>
                                
                            <div class="card-body pb-0">
                                <ul class="list-group list-group-flush">
                                    {foreach from=$p.plans item=o}
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Plan</strong>
                                            <span class="mb-0">{$o.name}</span>
                                        </li>
                                        
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Deposit Amount: &nbsp;&nbsp;&nbsp;</strong>
                                            <span class="mb-0">{$currency_sign}{$o.min_deposit} {if $o.max_deposit>0}-
                                                {$currency_sign}{$o.max_deposit}{else}and more
                                                {/if}</span>
                                        </li>
                                        
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Daily Profit</strong>
                                            <span class="mb-0">{$o.percent}</span>
                                        </li>
                                    {/foreach}
                                </ul>
                                
                                {if !$p.deposits}
                                    <p class=""><b>No deposits for this plan</b></p>
                                {else}
                                    <ul class="list-group list-group-flush">
                                            {foreach from=$p.deposits item=d}
                                                <li class="list-group-item d-flex px-0 justify-content-between">
                                                    <strong>Date</strong>
                                                    <span class="mb-0">
                                                        <b>{$d.date}</b>
                                                        <br>
                                                        {if $p.q_days == 0}
                                                            Working {$d.duration}days
                                                        {else}
                                                            Expire in {$d.expire_in}
                                                        {/if}
                                                    </span>
                                                </li>
                                                
                                                <li class="list-group-item d-flex px-0 justify-content-between">
                                                    <strong>Amount</strong>
                                                    <span class="mb-0">{$currency_sign}{$d.deposit} <img src="images/{$d.ec}.gif"
                                                        align=absmiddle hspace=1 height=17></span>
                                                </li>
                                                
                                                {if $p.withdraw_principal}
                                                    <li class="list-group-item d-flex px-0 justify-content-between">
                                                        <strong>Release</strong>
                                                        
                                                        {if $d.can_withdraw}
                                                          <a href="{"?a=withdraw_principal&deposit=`$d.id`"|encurl}" class="btn btn-primary">Release</a>
                                                        {else}
                                                            <span class="mb-0">
                                                                {if $d.pending_duration > 0}
                                                                    {$d.pending_duration} day{if $d.pending_duration > 1}s{/if} left
                                                                {else}
                                                                    not available
                                                                {/if}
                                                            </span>
                                                        {/if}
                                                    </li>
                                                {/if}
                                            {/foreach}
                                        </ul>
                                {/if}
                                
                                {if $p.total_deposit > 0 || $p.today_profit > 0 || $p.total_profit > 0}
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Deposited Total:</strong>
                                            <span class="mb-0">{$currency_sign}{$p.total_deposit}</span>
                                        </li>
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Profit Today:</strong>
                                            <span class="mb-0">{$currency_sign}{$p.today_profit}</span>
                                        </li>
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Total Profit:</strong>
                                            <span class="mb-0">{$currency_sign}{$p.total_profit}</span>
                                        </li>
                                    </ul>
                                {/if}
                            </div>
                        </div>
                    
                    </div>
    {/foreach}
{include file="footer.tpl"}