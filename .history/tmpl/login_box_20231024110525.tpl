

<ul class="dashboard-menu">
    <li>
        <a
        href="{"?a=account"|encurl}"
            class="active"
        ><i class="flaticon-man"></i>Dashboard</a>
    </li>
   
    <li>
        <a href="{"?a=deposit"|encurl}"><i class="flaticon-interest"></i>Deposit</a>
    </li>

    <li>
        <a href="{"?a=deposit_history"|encurl}"
        ><i class="flaticon-coin"></i>Deposits</a>
    </li>

    <li>
        <a href="{"?a=deposit_list"|encurl}"><i class="flaticon-interest"></i>Investments</a>
    </li>

    <li>
        <a href="{"?a=history&type=earning"|encurl}"><i class="flaticon-interest"></i>Earnings</a>
    </li>



    <li>
        <a href="{"?a=withdraw"|encurl}"><i class="flaticon-atm"></i>Withdraw</a>
    </li>

    <li>
        <a href="{"?a=withdraw_history"|encurl}"><i class="flaticon-interest"></i>Withdrawals</a>
    </li>

    {if $settings.use_referal_program == 1}
        <li>
            <a href="{"?a=referals"|encurl}"><i class="flaticon-deal"></i>Your Referrals</a>

        </li>

    {/if}

    <li>
        <a href="{"?a=edit_account"|encurl}"><i class="flaticon-gears"></i>Edit Account</a>
    </li>

{*    
    <li>
        <a href="fund-transfer.html"><i class="flaticon-exchange"></i>Fund Transfer </a>
    </li>
  
    
    <li>
        <a href="notification.html"><i class="flaticon-bell"></i>Notifications</a>
    </li>
    <li>
        <a href="ticket.html"><i class="flaticon-sms"></i>Tickets</a>
    </li>
    <li>
        <a href="promotional-metarials.html"><i class="flaticon-deal"></i>Promotional</a>
    </li> *}
    <li>
        <a href="{"?a=logout"|encurl}"><i class="flaticon-right-arrow"></i>Logout</a>
    </li>
  </ul>          
