<?php

apply_filters( "carbon_fields_{$type}_container_admin_only_access", true, $title, $this );

do_action( "carbon_fields_{$type}_container_saved", $user_data, $this );
