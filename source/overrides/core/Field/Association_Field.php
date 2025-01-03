<?php

apply_filters( "carbon_fields_association_field_options_{$base_name}_{$type}_{$post_type}", array(
    'post_type'        => $post_type,
    'posts_per_page'   => 1,
    'fields'           => 'ids',
    'suppress_filters' => false,
    's'                => $search_term,
) );

apply_filters( "carbon_fields_association_field_options_{$base_name}_{$type}", array(
    'fields' => 'ID',
    'number' => 1,
    'search' => $search_term,
) );