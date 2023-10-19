{section name=plans loop=$plans}

    <div class="deposit-wrapper">
        {if $qplans > 1}
            <div class="check_box_group">
                <input
                    type="checkbox"
                    name=h_id
                    value='{$plans[plans].id}'
                    {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)}
                        checked
                    {/if}
                    id="checkbox"
                >
                <label for="checkbox">{$plans[plans].name}</label>
            </div>
        {else}
            <input
                type=hidden
                name=h_id
                value='{$plans[plans].id}'
            >
        {/if}

        {section name=options loop=$plans[plans].plans}

            <div class="deposit-item">
                <div
                    class="deposit-inner"
                    id="plan_container"
                >
                    <div class="deposit-header">
                        <h3 class="title">{$o.percent|string_format:"%.2f"}%</h3>
                        <span><b>R.O.I</b></span>
                    </div>
                    <div class="deposit-body">
                        <div class="item">
                            <div class="item-thumb">
                                <img
                                    src="./assets/images/offer/offer1.png"
                                    alt="offer"
                                >
                            </div>
                            <div class="item-content">
                                <h5 class="title">Deposit</h5>
                                <h5 class="subtitle"><span class="min">${$o.min_deposit}</span><span class="to">to</span><span
                                        class="max"
                                    >${$o.max_deposit}</span></h5>
                                </h5>
                            </div>
                        </div>
                        <span class="bal-shape"></span>
                        <div class="item">
                            <div class="item-thumb">
                                <img
                                    src="./assets/images/offer/offer2.png"
                                    alt="offer"
                                >
                            </div>
                            <div class="item-content">
                                <h5 class="title">Terms</h5>
                                <h5 class="subtitle">{$o.name|escape:html}</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <a
                    href="#0"
                    class="select-plan"
                    id="icon"
                ><i class="fas fa-plus"></i></a>
            </div>

        {/section}

        {literal}
            <script language=javascript>
                const icon = document.getElementById('icon');
                const checkbox = document.getElementById('checkbox');
                const container = document.getElementById('plan_container');

                icon.addEventListener('click', () => {
                    checkbox.checked = !checkbox.checked;
                    plan_container.classList.toggle('active');
                });
            </script>

        {/literal}


    </div>
{/section}



<div class="deposit-system">
    <h4 class="main-subtitle">02. Choose Payment System</h4>
    <div class="text-center deposit-method-slider owl-theme owl-carousel">
        <a
            href="#0"
            class="deposit-method-item active"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/01.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/02.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/03.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/04.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/05.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/06.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/07.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/01.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/02.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/03.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/04.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/05.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/06.png"
                    alt="payment"
                >
            </div>
        </a>
        <a
            href="#0"
            class="deposit-method-item"
        >
            <div class="thumb">
                <div class="check">
                    <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                    >
                </div>
                <img
                    src="./assets/images/dashboard/payment/07.png"
                    alt="payment"
                >
            </div>
        </a>
    </div>
</div>
<div class="deposit-system">
    <h4 class="main-subtitle">03. Enter the amount of Deposit:</h4>
    <form class="make-deposit">
        <div class="form-group">
            <input
                type="text"
                placeholder="Enter your amount"
                class="make-amount"
            >
        </div>
        <div class="form-group">
            <label for="total-profit">Total Profit</label>
            <input
                type="text"
                readonly
                value="$180.00"
                class="readonly"
            >
        </div>
        <div class="form-group">
            <button
                type="submit"
                class="custom-button border-0"
            >Make Deposit</button>
        </div>
    </form>
</div>
