{% macro multiply(col1, col2, factor) %}
    ({{ col1 }} * {{ col2 }} * {{ factor }})
{% endmacro %}