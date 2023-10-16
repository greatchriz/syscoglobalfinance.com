{extends file="page_layout.tpl"}

{block name=hero}
    {include file="sections/hero.tpl" pagenamee="F.A.Q" image="https://puinvestment.org/images/banner/faq.jpg"}
{/block}

{block name=section1}
    <div class="container">
        <div class="grid md:grid-cols-12 grid-cols-1 gap-[30px]">
            {* <div class="lg:col-span-4 md:col-span-5">
          <div class="rounded-md shadow dark:shadow-gray-800 p-6 sticky top-20">
              <ul class="list-none sidebar-nav mb-0 py-0" id="navmenu-nav">
                  <li class="navbar-item p-0"><a href="#tech" class="text-base font-medium navbar-link">Buying Questions</a></li>
                  <li class="navbar-item mt-3 p-0"><a href="#general" class="text-base font-medium navbar-link">General Questions</a></li>
                  <li class="navbar-item mt-3 p-0"><a href="#payment" class="text-base font-medium navbar-link">Payments Questions</a></li>
                  <li class="navbar-item mt-3 p-0"><a href="#support" class="text-base font-medium navbar-link">Support Questions</a></li>
              </ul>
          </div>
      </div> *}

            <div class="lg:col-span-8 md:col-span-7">
                <div
                    id="general"
                    class="mt-8"
                >
                    <h5 class="text-2xl font-semibold">General Questions</h5>

                    <div
                        id="accordion-collapsetwo"
                        data-accordion="collapse"
                        class="mt-6"
                    >
                            
                    {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-1" 
                    accordionBody="accordion-collapse-body-1" 
                    title="Do you charge any commission for opening an account?" 
                    content="Opening an account is completely free. You can invest immediately after a registration process is completed."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-2" 
                    accordionBody="accordion-collapse-body-2" 
                    title="How do I create my puinvestment Account?" 
                    content="To create an account simply click on SIGNUP or on the referral link of your sponsor, fill in the registration form and then press 'Register'."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-3" 
                    accordionBody="accordion-collapse-body-3" 
                    title="Which e-currencies do you accept?" 
                    content="Puinvestment accepts Bitcoin, USDT-Erc20, USDT-Trc20 & TRX as the means of making deposits."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-4" 
                    accordionBody="accordion-collapse-body-4" 
                    title="How can I withdraw funds?" 
                    content="Login to your account using your username and password and check the Withdraw section."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-5" 
                    accordionBody="accordion-collapse-body-5" 
                    title="What is the minimum amount to withdraw?" 
                    content="The minimum withdrawal amount is $10."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-6" 
                    accordionBody="accordion-collapse-body-6" 
                    title="Do you charge any fees from withdrawals?" 
                    content="No, there is no withdrawal fee applied to your withdrawal requests."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-7" 
                    accordionBody="accordion-collapse-body-7" 
                    title="How long does it take for my deposit to be added to my puinvestment account?" 
                    content="Deposit activation is after the three block confirmations on the bitcoin network, and this doesn’t exceed 12 hours in which your deposit will be activated."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-8" 
                    accordionBody="accordion-collapse-body-8" 
                    title="How can I change my e-mail address or password?" 
                    content="Log into your Puinvestment account and click on the 'Edit Account Section'. You can change your e-mail address and password there."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-9" 
                    accordionBody="accordion-collapse-body-9" 
                    title="What if I can't log into my account because I forgot my password?" 
                    content="Click forgot password link, type your username or e-mail and you'll receive your account information."
                }
                
                {include 
                    file="sections/faq/faq-detail.tpl" 
                    accordionHeading="accordion-collapse-heading-10" 
                    accordionBody="accordion-collapse-body-10" 
                    title="Does a daily profit paid directly to my currency account?" 
                    content="No, profits are gathered on your Puinvestment account and you can withdraw them anytime to your attached wallet."
                }
                
                {include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-11" 
    accordionBody="accordion-collapse-body-11" 
    title="How do you calculate the interest on my account?" 
    content="Depending on each plan. Interest on your Puinvestment account is acquired Daily and credited to your available balance at the end of each day."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-12" 
    accordionBody="accordion-collapse-body-12" 
    title="Can I do a direct deposit from my account balance?" 
    content="Yes! To make a deposit from your Puinvestment account balance. Simply login into your members account and click on Make Deposit and select the Deposit from Account Balance Radio button."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-13" 
    accordionBody="accordion-collapse-body-13" 
    title="Can I add funds to a investment that's already running?" 
    content="No. You cannot add to a running investment plan, but rather wait for the existing investment to complete its cycle before adding more funds. However, you can invest another fund while the existing plan is running, they run separately."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-14" 
    accordionBody="accordion-collapse-body-14" 
    title="Can I make an additional deposit to Puinvestment account once it has been opened?" 
    content="Yes, you can but all transactions are handled separately."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-15" 
    accordionBody="accordion-collapse-body-15" 
    title="After I make a withdrawal request, when will the funds be available on my ecurrency account?" 
    content="All withdrawals are within a few minutes of request, but in the case of any delay due to server or technical problem or some other issue, it can take up to 24 hours."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-16" 
    accordionBody="accordion-collapse-body-16" 
    title="How can I change my password?" 
    content="You can change your password directly from your members dashboard by editing it in your personal profile."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-17" 
    accordionBody="accordion-collapse-body-17" 
    title="How can I check my account balances?" 
    content="You can access the account information 24/7 over the Internet. Simply login to your member dashboard to see your account balance."
}

{include 
    file="sections/faq/faq-detail.tpl" 
    accordionHeading="accordion-collapse-heading-18" 
    accordionBody="accordion-collapse-body-18" 
    title="How do I close my account?" 
    content="You can close your East Fortune Investment account anytime you wish. You can easily re-open them if you want to in the future. To close your account, please write to us on Support@puinvestment.org or Speak with an Agent through the customer live support, We strongly recommend you to withdraw all your funds before closing your account. By doing so, your investments will be secured and you'll be ready to leave."
}

{include 
                            file="sections/faq/faq-detail.tpl" 
                            accordionHeading="accordion-collapse-heading-19" 
                            accordionBody="accordion-collapse-body-19" 
                            title="Are there fees for closing an account?" 
                            content="There are no fees or penalties for closing/deleting your Puinvestment account."
                        }

{include 
                            file="sections/faq/faq-detail.tpl" 
                            accordionHeading="accordion-collapse-heading-20" 
                            accordionBody="accordion-collapse-body-20" 
                            title="What is Puinvestment referral program?" 
                            content="Puinvestment referral program is an exciting opportunity for Company users to claim earnings by inviting their audience & friends. It is one of the many ways we say thank you for your time and effort to help us expand our family. You are involved in every link in the growing chain. For this reason, we have introduced a gradual reward system for you to earn commissions."
                        }

{include 
                            file="sections/faq/faq-detail.tpl" 
                            accordionHeading="accordion-collapse-heading-21" 
                            accordionBody="accordion-collapse-body-21" 
                            title="Do I need active investment to earn referral Commissions?" 
                            content="No, an active investment is not needed for you to get referral commissions."
                        }

{include 
                            file="sections/faq/faq-detail.tpl" 
                            accordionHeading="accordion-collapse-heading-22" 
                            accordionBody="accordion-collapse-body-22" 
                            title="How does the Puinvestment referral program work?" 
                            content="To share your love of Puinvestment, give your personal referral link to friends and family and encourage them to visit our website. Once they register with your referral link and invest, you will get 10% commission from their Puinvestment deposit."
                        }

{include 
                            file="sections/faq/faq-detail.tpl" 
                            accordionHeading="accordion-collapse-heading-23" 
                            accordionBody="accordion-collapse-body-23" 
                            title="How much does the Puinvestment referral program offer?" 
                            content="You would earn a 10% commission on your active referrals."
                        }

{include 
                            file="sections/faq/faq-detail.tpl" 
                            accordionHeading="accordion-collapse-heading-24" 
                            accordionBody="accordion-collapse-body-24" 
                            title="What should I do if I can't find the answer to my question?" 
                            content="If you can't find the answer to your question, please write to us with the help of the 'CONTACT US' form or email us at support@puinvestment.org"
                        }


                    </div>
                </div>
            </div>
        </div>
        <!--end grid-->
    </div>
    <!--end container-->
{/block}

{block name=section2}
    <div class="container md:mt-24 mt-16">
        <div class="grid grid-cols-1 text-center">
            <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">Have Question ? Get in
                touch!</h3>

            <p class="text-slate-400 max-w-xl mx-auto">Our team of experienced professionals is here to answer your questions and provide guidance on all aspects of digital asset investing and trading. We understand that every client is unique, and we take a personalized approach to every interaction.</p>

            <div class="mt-6">
                <a
                    href="?a=support"
                    class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md me-2 mt-2"
                ><i class="uil uil-phone"></i> Contact us</a>
            </div>
        </div>
        <!--end grid-->
    </div>
    <!--end container-->
{/block}
