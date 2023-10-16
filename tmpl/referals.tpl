{include file="header.tpl"}


{if $upline.email != ""}
<div class="col-12">
    <div class="card">
        <div class="card-body">

            Your upline is <a href=mailto:{$upline.email}>{$upline.name}</a>

        </div>
    </div>
</div>
{/if}

<div class="col-12">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Your Referrals</h4>
        </div>
        <div class="card-body pb-0">
            <ul class="list-group list-group-flush">
                <li class="list-group-item d-flex px-0 justify-content-between">
                    <strong>Referrals:</strong>
                    <span class="mb-0">{$total_ref}</span>
                </li>

                <li class="list-group-item d-flex px-0 justify-content-between">
                    <strong>Active Referrals:</strong>
                    <span class="mb-0">{$active_ref}</span>
                </li>

                <li class="list-group-item d-flex px-0 justify-content-between">
                    <strong>Total Referral Commission:</strong>
                    <span class="mb-0">{$currency_sign}{$commissions}</span>
                </li>

                <li class="list-group-item d-flex px-0 justify-content-between">
                    <strong>Referral Link:</strong>
                    <span class="mb-0"><a href="{$settings.site_url}/{"?ref=`$userinfo.username`"|encurl}">
                            <b>{$settings.site_url}/{"?ref=`$userinfo.username`"|encurl}</b>
                        </a>
                    </span>
                </li>
            </ul>
        </div>
    </div>
</div>

{if $settings.show_refstat}
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Referral ins/signups</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <div
                        id="example_wrapper"
                        class="dataTables_wrapper"
                    >
                        <table
                            id="example"
                            class="display dataTable"
                            style="min-width: 845px"
                            role="grid"
                            aria-describedby="example_info"
                        >
                            <thead>
                                <tr role="row">
                                    <th
                                        class="sorting_asc"
                                        tabindex="0"
                                        aria-controls="example"
                                        rowspan="1"
                                        colspan="1"
                                        aria-sort="ascending"
                                        aria-label="Name: activate to sort column descending"
                                        style="width: 259.203px;"
                                    >Date</th>
                                    <th
                                        class="sorting"
                                        tabindex="0"
                                        aria-controls="example"
                                        rowspan="1"
                                        colspan="1"
                                        aria-label="Position: activate to sort column ascending"
                                        style="width: 402.578px;"
                                    >Ins</th>
                                    <th
                                        class="sorting"
                                        tabindex="0"
                                        aria-controls="example"
                                        rowspan="1"
                                        colspan="1"
                                        aria-label="Office: activate to sort column ascending"
                                        style="width: 202.812px;"
                                    >Sign Up</th>
                                </tr>
                            </thead>
                            <tbody>
                                {if $show_refstat}
                                    {section name=s loop=$refstat}
                                        <tr
                                            class="odd"
                                            role="row"
                                        >
                                            <td>{$refstat[s].date}</td>
                                            <td>{$refstat[s].income}</td>
                                            <b>{$refstat[s].reg}</b></td>
                                        </tr>
                                    {/section}
                                {else}
                                    <tr
                                        class="odd"
                                        role="row"
                                    >
                                        <td class="sorting_1"> No statistics found for this period.</td>

                                    </tr>
                                {/if}
                            </tbody>
                        </table>
                    </div>

                </div>

            </div>
        </div>
    </div>
{/if}

{if $settings.show_referals}
    {if $show_referals}
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Your referrals</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div
                            id="example_wrapper"
                            class="dataTables_wrapper"
                        >
                            <table
                                id="example"
                                class="display dataTable"
                                style="min-width: 845px"
                                role="grid"
                                aria-describedby="example_info"
                            >
                                <thead>
                                    <tr role="row">
                                        <th
                                            class="sorting_asc"
                                            tabindex="0"
                                            aria-controls="example"
                                            rowspan="1"
                                            colspan="1"
                                            aria-sort="ascending"
                                            aria-label="Name: activate to sort column descending"
                                            style="width: 259.203px;"
                                        >Nickname</th>
                                        <th
                                            class="sorting"
                                            tabindex="0"
                                            aria-controls="example"
                                            rowspan="1"
                                            colspan="1"
                                            aria-label="Position: activate to sort column ascending"
                                            style="width: 402.578px;"
                                        >Email</th>
                                        <th
                                            class="sorting"
                                            tabindex="0"
                                            aria-controls="example"
                                            rowspan="1"
                                            colspan="1"
                                            aria-label="Office: activate to sort column ascending"
                                            style="width: 202.812px;"
                                        >Status</th>
                                    </tr>
                                </thead>
                                <tbody>


                                    {section name=s loop=$referals}
                                        <tr
                                            class="odd"
                                            role="row"
                                        >
                                            <td>{$referals[s].username}</td>
                                            <td><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
                                            <td>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
                                        </tr>
                                        {if $referals[s].ref_stats}
                                            <tr>
                                                <td>
                                                    User referrals:
                                                    {section name=l loop=$referals[s].ref_stats}
                                                        <nobr>{$referals[s].ref_stats[l].cnt_active} active of
                                                            {$referals[s].ref_stats[l].cnt} on level
                                                            {$referals[s].ref_stats[l].level}{if !$smarty.section.l.last};{/if}
                                                        </nobr>
                                                    {/section}
                                                </td>
                                            </tr>
                                        {/if}
                                        {if $referals[s].came_from}
                                            <tr>
                                                <td>
                                                    <a
                                                        href="{$referals[s].came_from}"
                                                        target=_blank
                                                    >[User came from]</a>
                                                </td>
                                            </tr>
                                        {/if}
                                    {/section}

                                    <tr>
                                        <td colspan=3>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan=3><b>2-10 level referrals:</b> {$cnt_other}</td>
                                    </tr>
                                    <tr>
                                        <td colspan=3><b>2-10 level active referrals:</b> {$cnt_other_active}</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    {/if}
{/if}

{include file="footer.tpl"}
