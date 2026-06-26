{% set flag = 2 %}



SELECT * FROM {{ref('bronze_bookings')}}
{% if flag == 1%}
    WHERE NIGHTS_booked > 1
{% else %}
    WHERE NIGHTS_BOOKED = 1
{% endif %}
