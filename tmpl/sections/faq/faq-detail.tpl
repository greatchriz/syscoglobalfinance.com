
<div class="relative shadow dark:shadow-gray-800 rounded-md overflow-hidden">
    <h2
        class="text-base font-semibold"
        id="{$accordionHeading}"
    >
        <button
            type="button"
            class="flex justify-between items-center p-5 w-full font-medium ltr:text-left rtl:text-right"
            data-accordion-target="#{$accordionBody}"
            aria-expanded="true"
            aria-controls="{$accordionBody}" 
            >
            <span>{$title}
            </span>
            <svg
            data-accordion-icon
            class="w-4 h-4 shrink-0"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
        >
            <path
                fill-rule="evenodd"
                d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                clip-rule="evenodd"
            ></path>
        </svg>
        </button>
    </h2>
    <div
        id="{$accordionBody}"
        class="hidden"
        aria-labelledby="{$accordionHeading}" 
    >
        <div class="p-5">
            <p class="text-slate-400 dark:text-gray-400">{$content}</p>
        </div>
    </div>
</div>