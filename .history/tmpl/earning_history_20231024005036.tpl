{* new page *}

{include file="header.tpl"}
<div class="operations">
   <h3 class="main-title">History</h3>
   {literal}
      <script language=javascript>
         function go(p) {
            document.opts.page.value = p;
            document.opts.submit();
         }
      </script>
   {/literal}

   <form
      class="operation-filter"
      method=post
      name=opts
   >
      <input
         type=hidden
         name=a
         value=history
      >
      <input
         type=hidden
         name=page
         value={$current_page}
      >

      {* transaction type select *}
      <div class="filter-item">
         <label>Transaction Type:</label>
         <div class="select-item">
            <select
               class="select-bar"
               name=type
               onchange="document.opts.submit();"
            >
               <option value="">All transactions</option>
               {section name=opt loop=$options}
                  <option
                     value="{$options[opt].type}"
                     {if $options[opt].selected}selected{/if}
                  >
                     {$options[opt].type_name}
                  </option>
               {/section}
            </select>
         </div>
      </div>
      {* transaction type select end *}

      {* crypto currency select *}
      {if $ecs}
         <br><img
            src=images/q.gif
            width=1
            height=4
         ><br>

         <div class="filter-item">
            <label> Crypto Currency:</label>
            <div class="select-item">
               <select
                  class="select-bar"
                  name=ec
               >
                  <option value=-1>All eCurrencies</option>
                  {section name=opt loop=$options}
                     <option
                        value={$ecs[ec].id}
                        {if $frm.ec eq $ecs[ec].id}selected{/if}
                     >
                        {$ecs[ec].name}
                     </option>
                  {/section}
               </select>
            </div>
         </div>
      {/if}
      {* crypto currency select end  *}

      <div class="filter-item">
         <label>From:</label>
         <div class="select-item">

            <select
               name=month_from
               class=select-bar
            >
               {section name=month_from loop=$month}
                  <option
                     value={$smarty.section.month_from.index+1}
                     {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}
                  >{$month[month_from]}
                  {/section}
            </select>
            <select
               name=day_from
               class=select-bar
            >
               {section name=day_from loop=$day}
                  <option
                     value={$smarty.section.day_from.index+1}
                     {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}
                  >{$day[day_from]}
                  {/section}
            </select>
            <select
               name=year_from
               class=select-bar
            >
               {section name=year_from loop=$year}
                  <option
                     value={$year[year_from]}
                     {if $year[year_from] == $frm.year_from}selected{/if}
                  >{$year[year_from]}
                  {/section}
            </select>
         </div>
      </div>

      <div class="filter-item">
         <label>To:</label>
         <div class="select-item">

            <select
               name=month_to
               class=select-bar
            >
               {section name=month_to loop=$month}
                  <option
                     value={$smarty.section.month_to.index+1}
                     {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}
                  >{$month[month_to]}
                  {/section}
            </select>
            <select
               name=day_to
               class=select-bar
            >
               {section name=day_to loop=$day}
                  <option
                     value={$smarty.section.day_to.index+1}
                     {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}
                  >{$day[day_to]}
                  {/section}
            </select>
            <select
               name=year_to
               class=select-bar
            >
               {section name=year_to loop=$year}
                  <option
                     value={$year[year_to]}
                     {if $year[year_to] == $frm.year_to}selected{/if}
                  >{$year[year_to]}
                  {/section}
            </select>
         </div>
      </div>

      <div class="filter-item">
         <button
             type="submit"
             class="custom-button"
         >Go</button>
     </div>

   </form>






   <table
      cellspacing=1
      cellpadding=2
      border=0
      width=100%
   >
      <tr>
         <td class=inheader><b>Type</b></td>
         <td
            class=inheader
            width=200
         ><b>Amount</b></td>
         <td
            class=inheader
            width=170
         ><b>Date</b></td>
      </tr>
      {foreach from=$trans item=t}
         <tr>
            <td><b>{$t.transtype}</b></td>
            <td
               width=200
               align=right
            ><b>{$currency_sign} {$t.amount}</b> <img
                  src="images/{$t.ec}.gif"
                  align=absmiddle
                  hspace=1
                  height=17
               >{if $t.type == 'withdraw_pending'}<a
                     href="{"?a=cancelwithdraw&id=`$t.id`&return=`$return`&"|encurl}"
                     onclick="return confirm('Are you sure you want to delete this request?')"
               >[cancel]</a>{/if}</td>
            <td
               width=170
               align=center
               valign=bottom
            ><b><small>{$t.d}</small></b></td>
         </tr>
         <tr>
            <td
               colspan=3
               class=gray
            ><small>{$t.description|escape:html}</small></td>
         </tr>
      {foreachelse}
         <tr>
            <td
               colspan=3
               align=center
            >No transactions found</td>
         </tr>
      {/foreach}
      <tr>
         <td colspan=3>&nbsp;</td>

         {if $trans}
         <tr>
            <td colspan=2>For this period:</td>
            <td align=right><b>{$currency_sign} {$periodsum}</b></td>
         </tr>
      {/if}
      <tr>
         <td colspan=2>Total:</td>
         <td align=right><b>{$currency_sign} {$allsum}</b></td>
      </tr>
   </table>

   {paginator col=$paginator.col cur=$paginator.cur url="javascript:go('%s')"}


</div>
{include file="footer.tpl"}
