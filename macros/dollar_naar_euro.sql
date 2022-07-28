{% macro dollar_naar_euro(input, precision=2) %}
    ({{ input}} * 0.98)::numeric(16, {{ precision }})
    {% endmacro %}