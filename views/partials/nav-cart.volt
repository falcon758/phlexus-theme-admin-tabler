
<div class="dropdown d-none d-md-flex">
    <a class="nav-link icon" href="{{ url('/cart') }}">
        <i class="fe fe-shopping-cart"></i>

        {% if cart.hasProducts() %}
            <span class="nav-unread"></span>
        {% endif %}
    </a>
</div>