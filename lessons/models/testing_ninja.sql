{#
	A comment that won't appear in the compiled SQL
#}

-- A comment that will appear in the compiled SQL

{% set my_long_variable %}
	SELECT 1 As my_col
{% endset %}

{% set my_list = ['user_id', 'created_at'] %}

SELECT
{%- for item in my_list %}
	{{ item }}{% if not loop.last %},{% endif %}
{%- endfor %}

{{ my_list }}
