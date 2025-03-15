<?php
/**
 * Generated stub declarations for carbon fields.
 * @see https://github.com/htmlburger/carbon-fields
 * @see https://github.com/0zd0/carbon-fields-stubs
 */

namespace Carbon_Fields {
    /**
     * Container proxy factory class.
     * Used for shorter namespace access when creating a container.
     *
     * @method static \Carbon_Fields\Container\Comment_Meta_Container make_comment_meta( string $id, string $name = null )
     * @method static \Carbon_Fields\Container\Nav_Menu_Item_Container make_nav_menu_item( string $id, string $name = null )
     * @method static \Carbon_Fields\Container\Network_Container make_network( string $id, string $name = null )
     * @method static \Carbon_Fields\Container\Post_Meta_Container make_post_meta( string $id, string $name = null )
     * @method static \Carbon_Fields\Container\Term_Meta_Container make_term_meta( string $id, string $name = null )
     * @method static \Carbon_Fields\Container\Theme_Options_Container make_theme_options( string $id, string $name = null )
     * @method static \Carbon_Fields\Container\User_Meta_Container make_user_meta( string $id, string $name = null )
     */
    class Container
    {
        /**
         * A proxy for the abstract container factory method.
         *
         * @see    \Carbon_Fields\Container\Container::factory()
         * @return \Carbon_Fields\Container\Container
         */
        public static function factory()
        {
        }
        /**
         * An alias of factory().
         *
         * @see    \Carbon_Fields\Container\Container::factory()
         * @return \Carbon_Fields\Container\Container
         */
        public static function make()
        {
        }
        /**
         * @param string $method
         * @param array $arguments
         *
         * @return mixed
         */
        public static function __callStatic($method, $arguments)
        {
        }
    }
    /**
     * Block proxy factory class.
     * Used for shorter namespace access when creating a block.
     */
    class Block extends \Carbon_Fields\Container
    {
        /**
         * {@inheritDoc}
         */
        public static function make()
        {
        }
    }
    /**
     * Holds a static reference to the ioc container
     */
    final class Carbon_Fields
    {
        /**
         * Flag if Carbon Fields has been booted
         *
         * @var bool
         */
        public $booted = false;
        /**
         * Inversion of Control container instance
         *
         * @var PimpleContainer
         */
        public $ioc = null;
        /**
         * Singleton implementation
         *
         * @return Carbon_Fields
         */
        public static function instance()
        {
        }
        /**
         * Resolve a dependency through IoC
         *
         * @param  string      $key
         * @param  string|null $subcontainer Subcontainer to look into
         * @return mixed
         */
        public static function resolve($key, $subcontainer = null)
        {
        }
        /**
         * Resolve a dependency through IoC with arguments
         *
         * @param  string $identifier   Key to resolve from the container
         * @param  array  $arguments    Key-value array of arguments
         * @param  string $subcontainer The container to resolve from
         * @return mixed
         */
        public static function resolve_with_arguments($identifier, $arguments, $subcontainer = null)
        {
        }
        /**
         * Resolve a service through IoC
         *
         * @param string $service_name
         * @return mixed
         */
        public static function service($service_name)
        {
        }
        /**
         * Check if a dependency is registered
         *
         * @param  string      $key
         * @param  string|null $subcontainer Subcontainer to look into
         * @return bool
         */
        public static function has($key, $subcontainer = null)
        {
        }
        /**
         * Extend Carbon Fields by adding a new entity (container condition etc.)
         *
         * @param string $class    Extension class name
         * @param string $extender Extending callable
         */
        public static function extend($class, $extender)
        {
        }
        /**
         * Replace the ioc container for Carbon_Fields\Carbon_Fields
         *
         * @param  PimpleContainer $ioc
         */
        public function install(\Carbon_Fields\Pimple\Container $ioc)
        {
        }
        /**
         * Boot Carbon Fields with default IoC dependencies
         */
        public static function boot()
        {
        }
        /**
         * Check if Carbon Fields has booted
         */
        public static function is_booted()
        {
        }
        /**
         * Throw exception if Carbon Fields has not been booted
         */
        public static function verify_boot()
        {
        }
        /**
         * Throw exception if fields have not been registered yet
         */
        public static function verify_fields_registered()
        {
        }
        /**
         * Resolve the public url of a directory inside WordPress
         *
         * @param  string $directory
         * @return string
         */
        public static function directory_to_url($directory)
        {
        }
        /**
         * Get the event emitter
         *
         * @return Emitter
         */
        public function get_emitter()
        {
        }
        /**
         * Add a listener to an event
         *
         * @param string   $event
         * @param Event\Listener $listener
         * @return Event\Listener $listener
         */
        public static function add_listener($event, $listener)
        {
        }
        /**
         * Remove a listener from any event
         *
         * @param Event\Listener $listener
         */
        public static function remove_listener($listener)
        {
        }
        /**
         * Add a persistent listener to an event
         *
         * @param  string   $event    The event to listen for
         * @param  string   $callable The callable to call when the event is broadcasted
         * @return Event\Listener
         */
        public static function on($event, $callable)
        {
        }
        /**
         * Add a one-time listener to an event
         *
         * @param  string   $event    The event to listen for
         * @param  string   $callable The callable to call when the event is broadcasted
         * @return Event\Listener
         */
        public static function once($event, $callable)
        {
        }
    }
}
namespace Carbon_Fields\Datastore {
    interface Datastore_Holder_Interface
    {
        /**
         * Return whether the datastore instance is the default one or has been overriden
         *
         * @return boolean
         */
        public function has_default_datastore();
        /**
         * Set datastore instance
         *
         * @param Datastore_Interface $datastore
         * @param boolean             $set_as_default
         * @return object $this
         */
        public function set_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $set_as_default);
        /**
         * Get the DataStore instance
         *
         * @return Datastore_Interface $datastore
         */
        public function get_datastore();
    }
}
namespace Carbon_Fields\Container {
    /**
     * Base container class.
     * Defines the key container methods and their default implementations.
     */
    abstract class Container implements \Carbon_Fields\Datastore\Datastore_Holder_Interface
    {
        /**
         * Where to put a particular tab -- at the head or the tail. Tail by default
         */
        const TABS_TAIL = 1;
        const TABS_HEAD = 2;
        /**
         * Separator signifying field hierarchy relation
         * Used when searching for fields in a specific complex field
         */
        const HIERARCHY_FIELD_SEPARATOR = '/';
        /**
         * Separator signifying complex_field->group relation
         * Used when searching for fields in a specific complex field group
         */
        const HIERARCHY_GROUP_SEPARATOR = ':';
        /**
         * Visual layout type constants
         */
        const LAYOUT_TABBED_HORIZONTAL = 'tabbed-horizontal';
        const LAYOUT_TABBED_VERTICAL = 'tabbed-vertical';
        /**
         * Stores if the container is active on the current page
         *
         * @see activate()
         * @var bool
         */
        protected $active = false;
        /**
         * List of registered unique field names for this container instance
         *
         * @see register_field_name()
         * @var array
         */
        protected $registered_field_names = array();
        /**
         * Complex field layout
         *
         * @var string static::LAYOUT_* constant
         */
        protected $layout = self::LAYOUT_TABBED_HORIZONTAL;
        /**
         * Tabs available
         */
        protected $tabs = array();
        /**
         * List of default container settings
         *
         * @see init()
         * @var array
         */
        public $settings = array();
        /**
         * Unique ID of the container
         *
         * @var string
         */
        public $id;
        /**
         * Title of the container
         *
         * @var string
         */
        public $title = '';
        /**
         * Type of the container
         *
         * @var string
         */
        public $type;
        /**
         * List of notification messages to be displayed on the front-end
         *
         * @var array
         */
        protected $notifications = array();
        /**
         * List of error messages to be displayed on the front-end
         *
         * @var array
         */
        protected $errors = array();
        /**
         * List of container fields
         *
         * @see add_fields()
         * @var array
         */
        protected $fields = array();
        /**
         * Array of custom CSS classes.
         *
         * @see set_classes()
         * @see get_classes()
         * @var array<string>
         */
        protected $classes = array();
        /**
         * Container datastores. Propagated to all container fields
         *
         * @see set_datastore()
         * @see get_datastore()
         * @var Datastore_Interface
         */
        protected $datastore;
        /**
         * Flag whether the datastore is the default one or replaced with a custom one
         *
         * @see set_datastore()
         * @see get_datastore()
         * @var boolean
         */
        protected $has_default_datastore = true;
        /**
         * Fulfillable_Collection to use when checking attachment/saving conditions
         *
         * @var Fulfillable_Collection
         */
        protected $condition_collection;
        /**
         * Translator to use when translating conditions to json
         *
         * @var \Carbon_Fields\Container\Fulfillable\Translator\Translator
         */
        protected $condition_translator;
        /**
         * Create a new container of type $type and name $name.
         *
         * @param  string    $raw_type
         * @param  string    $id        Unique id for the container. Optional
         * @param  string    $name      Human-readable name of the container
         * @return Container $container
         */
        public static function factory($raw_type, $id, $name = '')
        {
        }
        /**
         * An alias of factory().
         *
         * @see    Container::factory()
         * @return Container
         */
        public static function make()
        {
        }
        /**
         * Create a new container
         *
         * @param string                 $id                   Unique id of the container
         * @param string                 $title                Title of the container
         * @param string                 $type                 Type of the container
         * @param Fulfillable_Collection $condition_collection
         * @param \Carbon_Fields\Container\Fulfillable\Translator\Translator $condition_translator
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Return the container id
         *
         * @return string
         */
        public function get_id()
        {
        }
        /**
         * Get array of all static condition types
         *
         * @param  boolean       $static
         * @return array<string>
         */
        protected function get_condition_types($static)
        {
        }
        /**
         * Return whether the container is active
         */
        public function is_active()
        {
        }
        /**
         * Activate the container and trigger an action
         */
        protected function activate()
        {
        }
        /**
         * Perform instance initialization
         */
        abstract public function init();
        /**
         * Boot the container once it's attached.
         */
        protected function boot()
        {
        }
        /**
         * Load the value for each field in the container.
         * Could be used internally during container rendering
         */
        public function load()
        {
        }
        /**
         * Called first as part of the container save procedure.
         * Responsible for checking the request validity and
         * calling the container-specific save() method
         *
         * @see save()
         * @see is_valid_save()
         */
        public function _save()
        {
        }
        /**
         * Load submitted data and save each field in the container
         *
         * @see is_valid_save()
         */
        public function save($data = null)
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        final protected function _is_valid_save()
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        abstract protected function is_valid_save();
        /**
         * Called first as part of the container attachment procedure.
         * Responsible for checking it's OK to attach the container
         * and if it is, calling the container-specific attach() method
         *
         * @see attach()
         * @see is_valid_attach()
         */
        public function _attach()
        {
        }
        /**
         * Attach the container rendering and helping methods
         * to concrete WordPress Action hooks
         */
        public function attach()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        final public function is_valid_attach()
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        abstract protected function get_environment_for_request();
        /**
         * Check container attachment rules against current page request (in admin)
         *
         * @return bool
         */
        abstract protected function is_valid_attach_for_request();
        /**
         * Check if conditions pass for request
         *
         * @return bool
         */
        protected function static_conditions_pass()
        {
        }
        /**
         * Get environment array for object id
         *
         * @param integer $object_id
         * @return array
         */
        abstract protected function get_environment_for_object($object_id);
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        abstract public function is_valid_attach_for_object($object_id);
        /**
         * Check if all conditions pass for object
         *
         * @param  integer $object_id
         * @return bool
         */
        protected function all_conditions_pass($object_id)
        {
        }
        /**
         * Whether this container is currently viewed.
         */
        public function should_activate()
        {
        }
        /**
         * Perform a check whether the current container has fields
         *
         * @return bool
         */
        public function has_fields()
        {
        }
        /**
         * Returns the private container array of fields.
         * Use only if you are completely aware of what you are doing.
         *
         * @return Field[]
         */
        public function get_fields()
        {
        }
        /**
         * Return root field from container with specified name
         *
         * @example crb_complex
         *
         * @param string $field_name
         * @return Field
         */
        public function get_root_field_by_name($field_name)
        {
        }
        /**
         * Get a regex to match field name patterns used to fetch specific fields
         *
         * @return string
         */
        protected function get_field_pattern_regex()
        {
        }
        /**
         * Return field from container with specified name
         *
         * @example $field_name = 'crb_complex/text_field'
         * @example $field_name = 'crb_complex/complex_2'
         * @example $field_name = 'crb_complex/complex_2:text_group/text_field'
         * @example $field_name = 'crb_complex[3]/complex_2[1]:text_group/text_field'
         *
         * @param string $field_name
         * @return Field
         */
        public function get_field_by_name($field_name)
        {
        }
        /**
         * Perform checks whether there is a field registered with the name $name.
         * If not, the field name is recorded.
         *
         * @param string $name
         * @return boolean
         */
        protected function register_field_name($name)
        {
        }
        /**
         * Return whether the datastore instance is the default one or has been overriden
         *
         * @return boolean
         */
        public function has_default_datastore()
        {
        }
        /**
         * Set datastore instance
         *
         * @param Datastore_Interface $datastore
         * @param bool                $set_as_default (optional)
         * @return Container $this
         */
        public function set_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $set_as_default = false)
        {
        }
        /**
         * Get the DataStore instance
         *
         * @return Datastore_Interface $datastore
         */
        public function get_datastore()
        {
        }
        /**
         * Return WordPress nonce name used to identify the current container instance
         *
         * @return string
         */
        protected function get_nonce_name()
        {
        }
        /**
         * Return WordPress nonce name used to identify the current container instance
         *
         * @return string
         */
        protected function get_nonce_value()
        {
        }
        /**
         * Check if the nonce is present in the request and that it is verified
         *
         * @return bool
         */
        protected function verified_nonce_in_request()
        {
        }
        /**
         * Whether the container is tabbed or not
         *
         * @return bool
         */
        public function is_tabbed()
        {
        }
        /**
         * Retrieve all fields that are not defined under a specific tab
         *
         * @return array
         */
        protected function get_untabbed_fields()
        {
        }
        /**
         * Retrieve all tabs.
         * Create a default tab if there are any untabbed fields.
         *
         * @return array
         */
        protected function get_tabs()
        {
        }
        /**
         * Build the tabs JSON
         *
         * @return array
         */
        protected function get_tabs_json()
        {
        }
        /**
         * Get custom CSS classes.
         *
         * @return array<string>
         */
        public function get_classes()
        {
        }
        /**
         * Set CSS classes that the container should use.
         *
         * @param string|array<string> $classes
         * @return Container $this
         */
        public function set_classes($classes)
        {
        }
        /**
         * Returns an array that holds the container data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * COMMON USAGE METHODS
         */
        /**
         * Append array of fields to the current fields set. All items of the array
         * must be instances of Field and their names should be unique for all
         * Carbon containers.
         * If a field does not have DataStore already, the container datastore is
         * assigned to them instead.
         *
         * @param array $fields
         * @return Container $this
         */
        public function add_fields($fields)
        {
        }
        /**
         * Configuration function for adding tab with fields
         *
         * @param string $tab_name
         * @param array $fields
         * @return Container $this
         */
        public function add_tab($tab_name, $fields)
        {
        }
        /**
         * Proxy function to set attachment conditions
         *
         * @see    Fulfillable_Collection::where()
         * @return Container $this
         */
        public function where()
        {
        }
        /**
         * Proxy function to set attachment conditions
         *
         * @see    Fulfillable_Collection::or_where()
         * @return Container $this
         */
        public function or_where()
        {
        }
        /**
         * Modify the layout of this field.
         *
         * @param  string $layout
         * @return self   $this
         */
        public function set_layout($layout)
        {
        }
    }
    class Block_Container extends \Carbon_Fields\Container\Container
    {
        /**
         * {@inheritDoc}
         */
        public $settings = array('mode' => 'edit', 'preview' => true, 'parent' => null, 'icon' => 'block-default', 'inner_blocks' => array('enabled' => false, 'position' => 'above', 'template' => null, 'template_lock' => null, 'allowed_blocks' => null), 'category' => array('slug' => 'common'));
        /**
         * Mode map for settings
         *
         * @see set_mode()
         * @var array
         */
        protected $mode_map = array('both' => array('mode' => 'edit', 'preview' => true), 'edit' => array('mode' => 'edit', 'preview' => false), 'preview' => array('mode' => 'preview', 'preview' => false));
        /***
         * Block type render callback.
         *
         * @var callable
         */
        protected $render_callback;
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function init()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function is_valid_save()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function save($data = null)
        {
        }
        /**
         * {@inheritDoc}
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * {@inheritDoc}
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function attach()
        {
        }
        /**
         * Attach the category of the block type.
         *
         * @param  array $categories
         * @return array
         */
        public function attach_block_category($categories)
        {
        }
        /**
         * Set the description of the block type.
         *
         * @see https://wordpress.org/gutenberg/handbook/designers-developers/developers/block-api/block-registration/#description-optional
         *
         * @param  string $description
         * @return Block_Container
         */
        public function set_description($description)
        {
        }
        /**
         * Set the category of the block type.
         *
         * @see https://wordpress.org/gutenberg/handbook/designers-developers/developers/block-api/block-registration/#category
         *
         * @param  string $slug
         * @param  string $title
         * @param  string $icon
         * @return Block_Container
         */
        public function set_category($slug, $title = null, $icon = null)
        {
        }
        /**
         * Set the icon of the block type.
         *
         * @see https://developer.wordpress.org/resource/dashicons
         * @see https://wordpress.org/gutenberg/handbook/designers-developers/developers/block-api/block-registration/#icon-optional
         *
         * @param  string $icon
         * @return Block_Container
         */
        public function set_icon($icon)
        {
        }
        /**
         * Set the keywords of the block type.
         *
         * @see https://wordpress.org/gutenberg/handbook/designers-developers/developers/block-api/block-registration/#keywords-optional
         *
         * @param  array $keywords
         * @return Block_Container
         */
        public function set_keywords($keywords = array())
        {
        }
        /**
         * Set a style handle.
         *
         * @param  string $key
         * @param  string $handle
         * @return Block_Container
         */
        protected function set_style_handle($key, $handle)
        {
        }
        /**
         * Set the style of the block type.
         *
         * @param  string $handle
         * @return Block_Container
         */
        public function set_style($handle)
        {
        }
        /**
         * Set the editor style of the block type.
         *
         * @param  string $handle
         * @return Block_Container
         */
        public function set_editor_style($handle)
        {
        }
        /**
         * Set whether the preview mode is available for the block type.
         *
         * @param  boolean $preview
         * @return Block_Container
         */
        public function set_preview_mode($preview = true)
        {
        }
        /**
         * Set the mode for the block type.
         *
         * @param  string $mode
         * @return Block_Container
         */
        public function set_mode($mode)
        {
        }
        /**
         * Set the parent block(s) in which the block type can be inserted.
         *
         * @see https://wordpress.org/gutenberg/handbook/designers-developers/developers/block-api/block-registration/#parent-optional
         *
         * @param  string|string[]|null $parent
         * @return Block_Container
         */
        public function set_parent($parent = null)
        {
        }
        /**
         * Set whether the inner blocks are available for the block type.
         *
         * @param  boolean $inner_blocks
         * @return Block_Container
         */
        public function set_inner_blocks($inner_blocks = true)
        {
        }
        /**
         * Set the position of the inner blocks to be rendered
         * above or below the fields.
         *
         * @param  string $position
         * @return Block_Container
         */
        public function set_inner_blocks_position($position = 'above')
        {
        }
        /**
         * Set the default template that should be rendered in inner blocks.
         *
         * @see https://github.com/WordPress/gutenberg/tree/master/packages/editor/src/components/inner-blocks#template
         *
         * @param  array[]|null $template
         * @return Block_Container
         */
        public function set_inner_blocks_template($template = null)
        {
        }
        /**
         * Set the lock mode used by template of inner blocks.
         *
         * @see https://github.com/WordPress/gutenberg/tree/master/packages/editor/src/components/inner-blocks#templatelock
         *
         * @param  string|boolean|null $lock
         * @return Block_Container
         */
        public function set_inner_blocks_template_lock($lock = null)
        {
        }
        /**
         * Set the list of allowed blocks that can be inserted.
         *
         * @see https://github.com/WordPress/gutenberg/tree/master/packages/editor/src/components/inner-blocks#allowedblocks
         *
         * @param  string[]|null $blocks
         * @return Block_Container
         */
        public function set_allowed_inner_blocks($blocks = null)
        {
        }
        /**
         * Set the render callback of the block type.
         *
         * @see https://wordpress.org/gutenberg/handbook/designers-developers/developers/tutorials/block-tutorial/creating-dynamic-blocks/
         *
         * @param  callable $render_callback
         * @return Block_Container
         */
        public function set_render_callback($render_callback)
        {
        }
        /**
         * Get the post id where the block is used in.
         * Try with the GET param, and if this is an
         * AJAX request get previuos (admin) edit page.
         * 
         * @return int $post_id
         */
        public function get_post_id()
        {
        }
        /**
         * Render the block type.
         *
         * @param  array  $attributes
         * @param  string $content
         * @return string
         */
        public function render_block($attributes, $content)
        {
        }
        /**
         * Register the block type.
         *
         * @return void
         */
        protected function register_block()
        {
        }
    }
    /**
     * Broken container class.
     * Used when a container gets misconfigured.
     */
    class Broken_Container extends \Carbon_Fields\Container\Container
    {
        public function add_fields($fields)
        {
        }
        public function init()
        {
        }
        protected function is_valid_save()
        {
        }
        protected function get_environment_for_request()
        {
        }
        public function is_valid_attach_for_request()
        {
        }
        protected function get_environment_for_object($object_id)
        {
        }
        public function is_valid_attach_for_object($object_id = null)
        {
        }
    }
    /**
     * Comment meta container class.
     */
    class Comment_Meta_Container extends \Carbon_Fields\Container\Container
    {
        protected $comment_id;
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Perform instance initialization
         */
        public function init()
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Perform save operation after successful is_valid_save() check.
         * The call is propagated to all fields in the container.
         *
         * @param int $comment_id ID of the comment against which save() is ran
         */
        public function save($comment_id = null)
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Check container attachment rules against current page request (in admin)
         *
         * @return bool
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * Add meta box to the comment
         */
        public function attach()
        {
        }
        /**
         * Output the container markup
         */
        public function render()
        {
        }
        /**
         * Set the comment ID the container will operate with.
         *
         * @param int $comment_id
         */
        protected function set_comment_id($comment_id)
        {
        }
    }
}
namespace Carbon_Fields\Container\Fulfillable {
    interface Fulfillable
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment);
    }
}
namespace Carbon_Fields\Container\Condition {
    /**
     * Base container condition class
     */
    abstract class Condition implements \Carbon_Fields\Container\Fulfillable\Fulfillable
    {
        /**
         * Condition value to check
         *
         * @var mixed
         */
        protected $value;
        /**
         * Comparers to use for condition checking
         *
         * @var \Carbon_Fields\Container\Condition\Comparer\Comparer[]
         */
        protected $comparers = array();
        /**
         * Comparison string to use
         *
         * @var string
         */
        protected $comparison_operator = '';
        /**
         * Get the condition value
         *
         * @return mixed
         */
        public function get_value()
        {
        }
        /**
         * Set the condition value
         *
         * @param mixed $value
         * @return Condition $this
         */
        public function set_value($value)
        {
        }
        /**
         * Get the condition comparers
         *
         * @return \Carbon_Fields\Container\Condition\Comparer\Comparer[]
         */
        protected function get_comparers()
        {
        }
        /**
         * Set the condition comparers
         *
         * @param \Carbon_Fields\Container\Condition\Comparer\Comparer[] $comparers
         * @return Condition $this
         */
        public function set_comparers($comparers)
        {
        }
        /**
         * Find the first operator which supports $comparison_operator and check if it is correct for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        protected function compare($a, $comparison_operator, $b)
        {
        }
        /**
         * Get comparison sign used
         *
         * @return string
         */
        public function get_comparison_operator()
        {
        }
        /**
         * Set comparison sign
         *
         * @param string $comparison_operator
         * @return $this
         */
        public function set_comparison_operator($comparison_operator)
        {
        }
    }
    /**
     * Check if the current blog has a specific id
     */
    class Blog_ID_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Internal boolean (always true) condition
     */
    class Boolean_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
}
namespace Carbon_Fields\Container\Condition\Comparer {
    abstract class Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array();
        /**
         * Check if comparer supports the specified comparison sign
         *
         * @param string $comparison_operator
         * @return bool
         */
        public function supports_comparison_operator($comparison_operator)
        {
        }
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        abstract public function is_correct($a, $comparison_operator, $b);
    }
    class Any_Contain_Comparer extends \Carbon_Fields\Container\Condition\Comparer\Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array('IN', 'NOT IN');
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        public function is_correct($a, $comparison_operator, $b)
        {
        }
    }
    class Any_Equality_Comparer extends \Carbon_Fields\Container\Condition\Comparer\Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array('=', '!=');
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        public function is_correct($a, $comparison_operator, $b)
        {
        }
    }
    class Contain_Comparer extends \Carbon_Fields\Container\Condition\Comparer\Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array('IN', 'NOT IN');
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        public function is_correct($a, $comparison_operator, $b)
        {
        }
    }
    class Custom_Comparer extends \Carbon_Fields\Container\Condition\Comparer\Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array('CUSTOM');
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        public function is_correct($a, $comparison_operator, $b)
        {
        }
    }
    class Equality_Comparer extends \Carbon_Fields\Container\Condition\Comparer\Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array('=', '!=');
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        public function is_correct($a, $comparison_operator, $b)
        {
        }
    }
    class Scalar_Comparer extends \Carbon_Fields\Container\Condition\Comparer\Comparer
    {
        /**
         * Supported comparison signs
         *
         * @var array<string>
         */
        protected $supported_comparison_operators = array('>', '>=', '<', '<=');
        /**
         * Check if comparison is true for $a and $b
         *
         * @param mixed  $a
         * @param string $comparison_operator
         * @param mixed  $b
         * @return bool
         */
        public function is_correct($a, $comparison_operator, $b)
        {
        }
    }
}
namespace Carbon_Fields\Container\Condition {
    /**
     * Check if user has a specific capability
     *
     * Operator "CUSTOM" is passed the user id
     */
    class User_Capability_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Get user id from environment
         *
         * @param  array   $environment
         * @return integer
         */
        protected function get_user_id($environment)
        {
        }
        /**
         * Check if a user has any of the supplied capabilities
         *
         * @param  integer       $user_id
         * @param  array<string> $capabilities
         * @return boolean
         */
        protected function user_can_any($user_id, $capabilities)
        {
        }
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if user has a specific capability
     *
     * Operator "CUSTOM" is passed the user id
     */
    class Current_User_Capability_Condition extends \Carbon_Fields\Container\Condition\User_Capability_Condition
    {
        /**
         * Get user id from environment
         *
         * @param  array   $environment
         * @return integer
         */
        protected function get_user_id($environment)
        {
        }
    }
    /**
     * Check if the currently logged in user has a specific id
     */
    class Current_User_ID_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if user has a specific role
     *
     * Operator "CUSTOM" is passed an array of all user roles
     */
    class User_Role_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Get roles for a user from the environment
         *
         * @param  array         $environment
         * @return array<string>
         */
        protected function get_user_roles($environment)
        {
        }
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if the currently logged in user has a specific role
     *
     * Operator "CUSTOM" is passed an array of all user roles
     */
    class Current_User_Role_Condition extends \Carbon_Fields\Container\Condition\User_Role_Condition
    {
        /**
         * Get roles for a user from the environment
         *
         * @param  array         $environment
         * @return array<string>
         */
        protected function get_user_roles($environment)
        {
        }
    }
    class Factory
    {
        /**
         * Container to resolve conditions from
         */
        protected $ioc;
        /**
         * Constructor
         *
         * @param \Carbon_Fields\Pimple\Container $ioc
         */
        public function __construct($ioc)
        {
        }
        /**
         * Get the type for the specified class
         *
         * @param  string $class
         * @return string
         */
        public function get_type($class)
        {
        }
        /**
         * Get an instance of the specified type
         *
         * @param  string $type
         * @return mixed
         */
        public function make($type)
        {
        }
    }
    /**
     * Check if post has a specific ancestor
     *
     * Operator "CUSTOM" is passed an array of ancestor post ids
     */
    class Post_Ancestor_ID_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check is post is of specific format
     *
     * Pass an empty string as the value for this condition in order to test if the post has no format assigned
     */
    class Post_Format_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check for a specific post id
     */
    class Post_ID_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if a post is on a specific hierarchy level
     *
     * Level 1 is considered the root level. Passed values have a forced minimum value of 1.
     */
    class Post_Level_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if post has a specific parent
     */
    class Post_Parent_ID_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if post has a specific template
     *
     * Pass "default" as the value for the default post template
     */
    class Post_Template_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check for a specific term
     *
     * Accepts the following values:
     *     Operators "=" and "!=":
     *         array(
     *             'value'=>...,
     *             'taxonomy'=>...,
     *             ['field'=>...] // "slug", "term_id" etc. - see get_term_by()
     *         )
     *
     *     Operators "IN" and "NOT IN":
     *         array(
     *             array(
     *                 'value'=>...,
     *                 'taxonomy'=>...,
     *                 ['field'=>...]
     *             ),
     *             ...
     *         )
     *
     *     Operator "CUSTOM" is passed the term_id
     */
    class Term_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * WP_Toolset to fetch term data with
         *
         * @var WP_Toolset
         */
        protected $wp_toolset;
        /**
         * Constructor
         */
        public function __construct($wp_toolset)
        {
        }
        /**
         * Get the condition value
         *
         * @return mixed
         */
        public function get_value()
        {
        }
        /**
         * Pluck term id from a full term descriptor
         *
         * @param  array   $full_term_descriptor
         * @return integer
         */
        protected function get_term_id_from_full_term_descriptor($full_term_descriptor)
        {
        }
        /**
         * Pluck term ids from array of full term descriptors
         *
         * @param  array          $full_term_descriptors
         * @return array<integer>
         */
        protected function get_term_ids_from_full_term_descriptors($full_term_descriptors)
        {
        }
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if a post has a specific term
     *
     * Accepts the following values:
     *     Operators "=" and "!=":
     *         array(
     *             'value'=>...,
     *             'taxonomy'=>...,
     *             ['field'=>...] // "slug", "term_id" etc. - see get_term_by()
     *         )
     *
     *     Operators "IN" and "NOT IN":
     *         array(
     *             array(
     *                 'value'=>...,
     *                 'taxonomy'=>...,
     *                 ['field'=>...]
     *             ),
     *             ...
     *         )
     *
     *     Operator "CUSTOM" is passed the post id
     */
    class Post_Term_Condition extends \Carbon_Fields\Container\Condition\Term_Condition
    {
        /**
         * Check if a post has a term
         *
         * @param  integer $post_id
         * @param  array   $full_term_desriptor
         * @return boolean
         */
        protected function post_has_term($post_id, $full_term_desriptor)
        {
        }
        /**
         * Check if a post has any of the supplied terms
         *
         * @param  integer      $post_id
         * @param  array<array> $full_term_desriptors
         * @return boolean
         */
        protected function post_has_any_term($post_id, $full_term_desriptors)
        {
        }
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check is post is of specific type
     */
    class Post_Type_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if term has a specific ancestor
     *
     * Accepts the following values:
     *     Operators "=" and "!=":
     *         array(
     *             'value'=>...,
     *             'taxonomy'=>...,
     *             ['field'=>...] // "slug", "term_id" etc. - see get_term_by()
     *         )
     *
     *     Operators "IN" and "NOT IN":
     *         array(
     *             array(
     *                 'value'=>...,
     *                 'taxonomy'=>...,
     *                 ['field'=>...]
     *             ),
     *             ...
     *         )
     *
     *     Operator "CUSTOM" is passed an array of ancestor term ids
     */
    class Term_Ancestor_Condition extends \Carbon_Fields\Container\Condition\Term_Condition
    {
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if a term is on a specific hierarchy level
     *
     * Level 1 is considered the root level. Passed values have a forced minimum value of 1.
     */
    class Term_Level_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if term has a specific parent
     *
     * Accepts the following values:
     *     Operators "=" and "!=":
     *         array(
     *             'value'=>...,
     *             'taxonomy'=>...,
     *             ['field'=>...] // "slug", "term_id" etc. - see get_term_by()
     *         )
     *
     *     Operators "IN" and "NOT IN":
     *         array(
     *             array(
     *                 'value'=>...,
     *                 'taxonomy'=>...,
     *                 ['field'=>...]
     *             ),
     *             ...
     *         )
     *
     *     Operator "CUSTOM" is passed the parent term_id
     */
    class Term_Parent_Condition extends \Carbon_Fields\Container\Condition\Term_Condition
    {
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check if term is of a specific taxonomy
     */
    class Term_Taxonomy_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
    /**
     * Check for a specific user id
     */
    class User_ID_Condition extends \Carbon_Fields\Container\Condition\Condition
    {
        /**
         * Check if the condition is fulfilled
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
}
namespace Carbon_Fields\Container\Fulfillable {
    class Fulfillable_Collection implements \Carbon_Fields\Container\Fulfillable\Fulfillable
    {
        /**
         * Condition factory used to translated condition types
         *
         * @var Factory
         */
        protected $condition_factory;
        /**
         * Array translator used to support array representations of fulfillables
         *
         * @var Array_Translator
         */
        protected $array_translator;
        /**
         * Array of fulfillables in this collection
         *
         * @var array<array>
         */
        protected $fulfillables = array();
        /**
         * Array of supported fulfillable comparisons
         *
         * @var array<string>
         */
        protected $supported_fulfillable_comparisons = array('AND', 'OR');
        /**
         * Array of allowed condition types which propagate to child collections
         *
         * @var array<string>
         */
        protected $condition_type_list = array();
        /**
         * Whether the condition type list is a whitelist or a blacklist
         *
         * @var bool
         */
        protected $condition_type_list_whitelist = false;
        /**
         * Constructor
         *
         * @param Factory          $condition_factory
         * @param Array_Translator $array_translator
         */
        public function __construct(\Carbon_Fields\Container\Condition\Factory $condition_factory, \Carbon_Fields\Container\Fulfillable\Translator\Array_Translator $array_translator)
        {
        }
        /**
         * Create a new collection
         *
         * @return Fulfillable_Collection
         */
        protected function create_collection()
        {
        }
        /**
         * Get an array of the fulfillables in this collection
         *
         * @return array<Fulfillable>
         */
        public function get_fulfillables()
        {
        }
        /**
         * Get array of allowed condition types
         *
         * @return array<string>
         */
        public function get_condition_type_list()
        {
        }
        /**
         * Set array of allowed condition types
         * WARNING: this will NOT remove already added conditions which are no longer allowed
         *
         * @param  array<string>          $condition_type_list
         * @param  bool                   $whitelist
         * @return Fulfillable_Collection $this
         */
        public function set_condition_type_list($condition_type_list, $whitelist)
        {
        }
        /**
         * Check if conditions types list is a whitelist
         *
         * @return bool
         */
        public function is_condition_type_list_whitelist()
        {
        }
        /**
         * Check if condition type is allowed
         *
         * @param  string $condition_type
         * @return bool
         */
        public function is_condition_type_allowed($condition_type)
        {
        }
        /**
         * Propagate allowed condition types to child collections
         */
        protected function propagate_condition_type_list()
        {
        }
        /**
         * Shorthand for where with OR comparison
         *
         * @param  string|array|callable  $condition_type
         * @param  string                 $comparison_operator Can be skipped. Defaults to "="
         * @param  mixed                  $value
         * @return Fulfillable_Collection $this
         */
        public function or_where($condition_type, $comparison_operator = '=', $value = null)
        {
        }
        /**
         * Add fulfillable with optional comparison_operator
         * This method assumes there is no fulfillable that can be compared with literal NULL
         *
         * @param  string|array|callable  $condition_type
         * @param  string                 $comparison_operator Can be skipped. Defaults to "="
         * @param  mixed                  $value
         * @param  string                 $fulfillable_comparison
         * @return Fulfillable_Collection $this
         */
        public function where($condition_type, $comparison_operator = '=', $value = null, $fulfillable_comparison = 'AND')
        {
        }
        /**
         * Add a Fulfillable through array representation
         *
         * @param  array                  $fulfillable_as_array
         * @param  string                 $fulfillable_comparison
         * @return Fulfillable_Collection $this
         */
        protected function where_array($fulfillable_as_array, $fulfillable_comparison)
        {
        }
        /**
         * Add a Fulfillable_Collection for nested logic
         *
         * @param  callable               $collection_callable
         * @param  string                 $fulfillable_comparison
         * @return Fulfillable_Collection $this
         */
        protected function where_collection($collection_callable, $fulfillable_comparison)
        {
        }
        /**
         * Add fulfillable to collection
         *
         * @param Fulfillable $fulfillable
         * @param string      $fulfillable_comparison See static::$supported_fulfillable_comparisons
         */
        public function add_fulfillable(\Carbon_Fields\Container\Fulfillable\Fulfillable $fulfillable, $fulfillable_comparison)
        {
        }
        /**
         * Remove fulfillable from collection
         *
         * @param Fulfillable $fulfillable
         * @return bool Fulfillable found and removed
         */
        public function remove_fulfillable(\Carbon_Fields\Container\Fulfillable\Fulfillable $fulfillable)
        {
        }
        /**
         * Get a copy of the collection with conditions not in the whitelist filtered out
         *
         * @param  array<string>          $condition_whitelist
         * @return Fulfillable_Collection
         */
        public function filter($condition_whitelist)
        {
        }
        /**
         * Get a copy of the collection with passed conditions evaluated into boolean conditions
         * Useful when evaluating only certain condition types but preserving the rest
         * or when passing dynamic conditions to the front-end
         *
         * @param  array<string>          $condition_types
         * @param  array|boolean          $environment Environment array or a boolean value to force on conditions
         * @param  array<string>          $comparison_operators Array of comparison operators to evaluate regardless of condition type
         * @param  boolean                $condition_types_blacklist Whether the condition list should act as a blacklist
         * @param  boolean                $comparison_operators_blacklist Whether the comparison operators list should act as a blacklist
         * @return Fulfillable_Collection
         */
        public function evaluate($condition_types, $environment, $comparison_operators = array(), $condition_types_blacklist = false, $comparison_operators_blacklist = false)
        {
        }
        /**
         * Check if all fulfillables are fulfilled taking into account their fulfillable comparison
         *
         * @param  array $environment
         * @return bool
         */
        public function is_fulfilled($environment)
        {
        }
    }
}
namespace Carbon_Fields\Container\Fulfillable\Translator {
    abstract class Translator
    {
        /**
         * Translate a Fulfillable to foreign data
         *
         * @param  Fulfillable $fulfillable
         * @return mixed
         */
        public function fulfillable_to_foreign(\Carbon_Fields\Container\Fulfillable\Fulfillable $fulfillable)
        {
        }
        /**
         * Translate a Condition to foreign data
         *
         * @param  Condition $condition
         * @return mixed
         */
        abstract protected function condition_to_foreign(\Carbon_Fields\Container\Condition\Condition $condition);
        /**
         * Translate a Fulfillable_Collection to foreign data
         *
         * @param  Fulfillable_Collection $fulfillable_collection
         * @return mixed
         */
        abstract protected function fulfillable_collection_to_foreign(\Carbon_Fields\Container\Fulfillable\Fulfillable_Collection $fulfillable_collection);
        /**
         * Translate foreign data to a Fulfillable
         *
         * @param  mixed       $foreign
         * @return Fulfillable
         */
        abstract public function foreign_to_fulfillable($foreign);
    }
    class Array_Translator extends \Carbon_Fields\Container\Fulfillable\Translator\Translator
    {
        /**
         * Condition factory used to translated condition types
         *
         * @var Factory
         */
        protected $condition_factory;
        /**
         * Constructor
         *
         * @param Factory $condition_factory
         */
        public function __construct(\Carbon_Fields\Container\Condition\Factory $condition_factory)
        {
        }
        /**
         * {@inheritDoc}
         */
        protected function condition_to_foreign(\Carbon_Fields\Container\Condition\Condition $condition)
        {
        }
        /**
         * {@inheritDoc}
         */
        protected function fulfillable_collection_to_foreign(\Carbon_Fields\Container\Fulfillable\Fulfillable_Collection $fulfillable_collection)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function foreign_to_fulfillable($foreign)
        {
        }
        /**
         * Translate a Condition
         *
         * @param  array     $foreign
         * @return Condition
         */
        protected function foreign_to_native_condition($foreign)
        {
        }
        /**
         * Translate a Fulfillable_Collection
         *
         * @param  array                  $foreign
         * @return Fulfillable_Collection
         */
        protected function foreign_to_native_fulfillable_collection($foreign)
        {
        }
    }
    class Json_Translator extends \Carbon_Fields\Container\Fulfillable\Translator\Array_Translator
    {
        /**
         * {@inheritDoc}
         */
        public function fulfillable_to_foreign(\Carbon_Fields\Container\Fulfillable\Fulfillable $fulfillable)
        {
        }
        /**
         * Make conditions friendly for json-based frontend.
         *
         * @param  array $foreign
         * @return array
         */
        protected function foreign_to_json($foreign)
        {
        }
    }
}
namespace Carbon_Fields\Container {
    /**
     * Nav menu item fields container class.
     */
    class Nav_Menu_Item_Container extends \Carbon_Fields\Container\Container
    {
        /**
         * Array of container clones for every menu item
         *
         * @see init()
         * @var int
         */
        protected $menu_item_instances = array();
        /**
         * The menu item id this container is for
         *
         * @var int
         */
        protected $menu_item_id = 0;
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Perform instance initialization
         *
         * @param int $menu_item_id Used to pass the correct menu_item_id to the Container object
         */
        public function init($menu_item_id = 0)
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Perform save operation after successful is_valid_save() check.
         * The call is propagated to all fields in the container.
         */
        public function save($data = null)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function is_active()
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * Output the container markup
         */
        public function render()
        {
        }
        /**
         * Trigger Save for all instances
         */
        public function update($menu_id, $current_menu_item_id)
        {
        }
        /**
         * Render custom fields inside each Nav Menu entry
         */
        public function form($item)
        {
        }
        /**
         * Create a clone of this container with its own datastore for every menu item
         */
        protected function get_clone_for_menu_item($menu_item_id, $load = true)
        {
        }
        /**
         * Setup custom walker for the Nav Menu entries
         */
        public static function edit_walker()
        {
        }
    }
    /**
     * Theme options container class.
     */
    class Theme_Options_Container extends \Carbon_Fields\Container\Container
    {
        /**
         * Array of registered page slugs to verify uniqueness with
         *
         * @var array
         */
        protected static $registered_pages = array();
        /**
         * Array of container settings
         *
         * @var array
         */
        public $settings = array('parent' => '', 'file' => '', 'icon' => '', 'menu_position' => null, 'menu_title' => null);
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Sanitize a title to a filename
         *
         * @param  string $title
         * @param  string $extension
         * @return string
         */
        protected function title_to_filename($title, $extension)
        {
        }
        /**
         * Attach container as a theme options page/subpage.
         */
        public function init()
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Perform save operation after successful is_valid_save() check.
         * The call is propagated to all fields in the container.
         *
         * @param mixed $user_data
         */
        public function save($user_data = null)
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * Add theme options container pages.
         * Hook the container saving action.
         */
        public function attach()
        {
        }
        /**
         * Whether this container is currently viewed.
         *
         * @return boolean
         */
        public function should_activate()
        {
        }
        /**
         * Output the container markup
         */
        public function render()
        {
        }
        /**
         * Register the page while making sure it is unique.
         *
         * @return boolean
         */
        protected function register_page()
        {
        }
        /**
         * Change the parent theme options page of this container
         *
         * @param  string|Theme_Options_Container $parent
         * @return Container                      $this
         */
        public function set_page_parent($parent)
        {
        }
        /**
         * Get the theme options file name of this container.
         *
         * @return string
         */
        public function get_page_file()
        {
        }
        /**
         * Set the theme options file name of this container.
         *
         * @param  string    $file
         * @return Container $this
         */
        public function set_page_file($file)
        {
        }
        /**
         * Set the title of this container in the administration menu.
         *
         * @param  string    $title
         * @return Container $this
         */
        public function set_page_menu_title($title)
        {
        }
        /**
         * Alias of the set_page_menu_position() method for backwards compatibility
         *
         * @param  integer   $position
         * @return Container $this
         */
        public function set_page_position($position)
        {
        }
        /**
         * Set the page position of this container in the administration menu.
         *
         * @param  integer   $position
         * @return Container $this
         */
        public function set_page_menu_position($position)
        {
        }
        /**
         * Set the icon of this theme options page.
         * Applicable only for parent theme option pages.
         *
         * @param  string    $icon
         * @return Container $this
         */
        public function set_icon($icon)
        {
        }
    }
    /**
     * Theme options container class.
     */
    class Network_Container extends \Carbon_Fields\Container\Theme_Options_Container
    {
        /**
         * ID of the site the container is operating with
         *
         * @see init()
         * @var int
         */
        protected $site_id;
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function init()
        {
        }
        /**
         * Check if a site exists by id
         *
         * @param  integer $id
         * @return boolean
         */
        protected function site_exists($id)
        {
        }
        /**
         * Get the site ID the container is operating with.
         *
         * @return integer
         */
        public function get_site_id()
        {
        }
        /**
         * Set the site ID the container will operate with.
         *
         * @param  int  $id
         * @return self $this
         */
        public function set_site_id($id)
        {
        }
    }
    /**
     * Field container designed to extend WordPress custom fields functionality,
     * providing easier user interface to add, edit and delete text, media files,
     * location information and more.
     */
    class Post_Meta_Container extends \Carbon_Fields\Container\Container
    {
        /**
         * ID of the post the container is working with
         *
         * @see init()
         * @var int
         */
        protected $post_id;
        /**
         * Post Types
         * 
         */
        protected $post_types;
        /**
         * Determines whether revisions are disabled for this container
         *
         * @var bool
         */
        protected $revisions_disabled = false;
        /**
         * List of default container settings
         *
         * @see init()
         * @var array
         */
        public $settings = array('meta_box_context' => 'normal', 'meta_box_priority' => 'high');
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Create DataStore instance, set post ID to operate with (if such exists).
         * Bind attach() and save() to the appropriate WordPress actions.
         */
        public function init()
        {
        }
        /**
         * Checks whether the current save request is valid
         * Possible errors are triggering save() for autosave requests
         * or performing post save outside of the post edit page (like Quick Edit)
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Perform save operation after successful is_valid_save() check.
         * The call is propagated to all fields in the container.
         *
         * @param int $post_id ID of the post against which save() is ran
         */
        public function save($post_id = null)
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * Add meta box for each of the container post types
         */
        public function attach()
        {
        }
        /**
         * Classes to add to the post meta box
         */
        public function add_postbox_classes($classes)
        {
        }
        /**
         * Output the container markup
         */
        public function render()
        {
        }
        /**
         * Set the post ID the container will operate with.
         *
         * @param int $post_id
         */
        public function set_post_id($post_id)
        {
        }
        /**
         * Get array of post types this container can appear on conditionally
         *
         * @return array<string>
         */
        public function get_post_type_visibility()
        {
        }
        /**
         * COMMON USAGE METHODS
         */
        /**
         * Show the container only on particular page referenced by its path.
         *
         * @deprecated
         * @param int|string $page page ID or page path
         * @return object $this
         */
        public function show_on_page($page)
        {
        }
        /**
         * Show the container only on pages whose parent is referenced by $parent_page_path.
         *
         * @deprecated
         * @param string $parent_page_path
         * @return object $this
         */
        public function show_on_page_children($parent_page_path)
        {
        }
        /**
         * Show the container only on pages whose template has filename $template_path.
         *
         * @deprecated
         * @param string|array $template_path
         * @return object $this
         */
        public function show_on_template($template_path)
        {
        }
        /**
         * Hide the container from pages whose template has filename $template_path.
         *
         * @deprecated
         * @param string|array $template_path
         * @return object $this
         */
        public function hide_on_template($template_path)
        {
        }
        /**
         * Show the container only on hierarchical posts of level $level.
         * Levels start from 1 (top level post)
         *
         * @deprecated
         * @param int $level
         * @return object $this
         */
        public function show_on_level($level)
        {
        }
        /**
         * Show the container only on posts from the specified format.
         * Learn more about {@link http://codex.wordpress.org/Post_Formats Post Formats (Codex)}
         *
         * @deprecated
         * @param string|array $post_format Name of the format as listed on Codex
         * @return object $this
         */
        public function show_on_post_format($post_format)
        {
        }
        /**
         * Show the container only on posts from the specified type(s).
         *
         * @deprecated
         * @param string|array $post_types
         * @return object $this
         */
        public function show_on_post_type($post_types)
        {
        }
        /**
         * Show the container only on posts from the specified category.
         *
         * @see show_on_taxonomy_term()
         *
         * @deprecated
         * @param string $category_slug
         * @return object $this
         */
        public function show_on_category($category_slug)
        {
        }
        /**
         * Show the container only on posts which have term $term_slug from the $taxonomy_slug taxonomy.
         *
         * @deprecated
         * @param string $taxonomy_slug
         * @param string $term_slug
         * @return object $this
         */
        public function show_on_taxonomy_term($term_slug, $taxonomy_slug)
        {
        }
        /**
         * Sets the meta box container context
         *
         * @see https://codex.wordpress.org/Function_Reference/add_meta_box
         * @param string $context ('normal', 'advanced', 'side' or the custom `carbon_fields_after_title`)
         */
        public function set_context($context)
        {
        }
        /**
         * Sets the meta box container priority
         *
         * @see https://codex.wordpress.org/Function_Reference/add_meta_box
         * @param string $priority ('high', 'core', 'default' or 'low')
         */
        public function set_priority($priority)
        {
        }
        public function set_revisions_disabled($revisions_disabled)
        {
        }
        public function get_revisions_disabled()
        {
        }
    }
    /**
     * Keeps track of all instantiated containers
     */
    class Repository
    {
        /**
         * List of registered unique container ids
         *
         * @see get_unique_container_id()
         * @see register_unique_container_id()
         * @see unregister_unique_container_id()
         * @var array
         */
        protected $registered_container_ids = array();
        /**
         * List of registered containers that should be initialized
         *
         * @see initialize_containers()
         * @var array
         */
        protected $pending_containers = array();
        /**
         * List of all containers
         *
         * @see _attach()
         * @var array
         */
        protected $containers = array();
        /**
         * Container id prefix
         *
         * @var string
         */
        protected $container_id_prefix = 'carbon_fields_container_';
        /**
         * Container id prefix
         *
         * @var string
         */
        protected $widget_id_wildcard_suffix = '-__i__';
        /**
         * Register a container with the repository
         *
         * @param Container $container
         */
        public function register_container(\Carbon_Fields\Container\Container $container)
        {
        }
        /**
         * Initialize registered containers
         *
         * @return Container[]
         */
        public function initialize_containers()
        {
        }
        /**
         * Return all containers
         *
         * @param string $type Container type to filter for
         * @return Container[]
         */
        public function get_containers($type = null)
        {
        }
        /**
         * Return field in a container with supplied id
         *
         * @param  string                    $field_name
         * @param  string                    $container_id
         * @param  bool                      $include_nested_fields
         * @return \Carbon_Fields\Field\Field
         */
        public function get_field_in_container($field_name, $container_id, $include_nested_fields = true)
        {
        }
        /**
         * Return field in containers
         *
         * @param  string                    $field_name
         * @param  string                    $container_type
         * @param  bool                      $include_nested_fields
         * @return \Carbon_Fields\Field\Field
         */
        public function get_field_in_containers($field_name, $container_type = null, $include_nested_fields = true)
        {
        }
        /**
         * Return all currently active containers
         *
         * @return Container[]
         */
        public function get_active_containers()
        {
        }
        /**
         * Check if container identificator id is unique
         *
         * @param string $id
         * @return bool
         */
        public function is_unique_container_id($id)
        {
        }
        /**
         * Generate a unique container identificator id based on container title
         *
         * @param string $title
         * @return string
         */
        public function get_unique_container_id($title)
        {
        }
        /**
         * Add container identificator id to the list of unique container ids
         *
         * @param string $id
         */
        protected function register_unique_container_id($id)
        {
        }
        /**
         * Remove container identificator id from the list of unique container ids
         *
         * @param string $id
         */
        protected function unregister_unique_container_id($id)
        {
        }
    }
    /**
     * Term meta container class.
     */
    class Term_Meta_Container extends \Carbon_Fields\Container\Container
    {
        protected $term_id;
        public $settings = array();
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Bind attach() and save() to the appropriate WordPress actions.
         */
        public function init()
        {
        }
        /**
         * Hook to relevant taxonomies
         */
        public function hook_to_taxonomies()
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Perform save operation after successful is_valid_save() check.
         * The call is propagated to all fields in the container.
         *
         * @param int $term_id ID of the term against which save() is ran
         */
        public function save($term_id = null)
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * Add term meta for each of the container taxonomies
         */
        public function attach()
        {
        }
        /**
         * Output the container markup
         */
        public function render($term = null)
        {
        }
        /**
         * Set the term ID the container will operate with.
         *
         * @param int $term_id
         */
        protected function set_term_id($term_id)
        {
        }
        /**
         * Get array of taxonomies this container can appear on conditionally
         *
         * @return array<string>
         */
        public function get_taxonomy_visibility()
        {
        }
        /**
         * Show the container only on terms from the specified taxonomies.
         *
         * @deprecated
         * @param string|array $taxonomies
         * @return object $this
         */
        public function show_on_taxonomy($taxonomies)
        {
        }
        /**
         * Show the container only on particular term level.
         *
         * @deprecated
         * @param int $term_level
         * @return object $this
         */
        public function show_on_level($term_level)
        {
        }
    }
    class User_Meta_Container extends \Carbon_Fields\Container\Container
    {
        protected $user_id;
        public $settings = array();
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Bind attach() and save() to the appropriate WordPress actions.
         */
        public function init()
        {
        }
        /**
         * Checks whether the current save request is valid
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Perform save operation after successful is_valid_save() check.
         * The call is propagated to all fields in the container.
         *
         * @param int $user_id ID of the user against which save() is ran
         */
        public function save($user_id = null)
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /**
         * Add the container to the user
         */
        public function attach()
        {
        }
        /**
         * Whether we're on the user profile page
         */
        protected function is_profile_page()
        {
        }
        /**
         * Output the container markup
         */
        public function render($user_profile = null)
        {
        }
        /**
         * Set the user ID the container will operate with.
         *
         * @param int $user_id
         */
        protected function set_user_id($user_id)
        {
        }
        /**
         * Show the container only on users who have the $role role.
         *
         * @deprecated
         * @param string|array $role
         * @return object $this
         */
        public function show_on_user_role($role)
        {
        }
    }
    /**
     * Widget container class
     */
    class Widget_Container extends \Carbon_Fields\Container\Container
    {
        /**
         * {@inheritDoc}
         */
        public function __construct($id, $title, $type, $condition_collection, $condition_translator)
        {
        }
        /**
         * Perform instance initialization
         */
        public function init()
        {
        }
        /**
         * Get environment array for page request (in admin)
         *
         * @return array
         */
        protected function get_environment_for_request()
        {
        }
        /**
         * Perform checks whether the container should be attached during the current request
         *
         * @return bool True if the container is allowed to be attached
         */
        public function is_valid_attach_for_request()
        {
        }
        /**
         * Get environment array for object id
         *
         * @return array
         */
        protected function get_environment_for_object($object_id)
        {
        }
        /**
         * Check container attachment rules against object id
         *
         * @param int $object_id
         * @return bool
         */
        public function is_valid_attach_for_object($object_id = null)
        {
        }
        /* Checks whether the current save request is valid
         *
         * @return bool
         */
        public function is_valid_save()
        {
        }
        /**
         * Output the container markup
         */
        public function render()
        {
        }
        /**
         * Returns an array that holds the container data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
}
namespace Carbon_Fields\Datastore {
    /**
     * Interface for data storage management.
     */
    interface Datastore_Interface
    {
        /**
         * Get the related object id
         *
         * @return integer
         */
        public function get_object_id();
        /**
         * Set the related object id
         *
         * @param integer $object_id
         */
        public function set_object_id($object_id);
        /**
         * Load the field value(s)
         *
         * @param  Field $field The field to load value(s) in.
         * @return array
         */
        public function load(\Carbon_Fields\Field\Field $field);
        /**
         * Save the field value(s)
         *
         * @param Field $field The field to save.
         */
        public function save(\Carbon_Fields\Field\Field $field);
        /**
         * Delete the field value(s)
         *
         * @param Field $field The field to delete.
         */
        public function delete(\Carbon_Fields\Field\Field $field);
    }
    /**
     * Base datastore.
     * Defines the key datastore methods and their default implementations.
     */
    abstract class Datastore implements \Carbon_Fields\Datastore\Datastore_Interface
    {
        /**
         * The related object id
         *
         * @var integer
         */
        protected $object_id = 0;
        /**
         * Initialize the datastore.
         */
        public function __construct()
        {
        }
        /**
         * Initialization tasks for concrete datastores.
         *
         * @abstract
         */
        abstract public function init();
        /**
         * Get the related object id
         *
         * @return integer
         */
        public function get_object_id()
        {
        }
        /**
         * Set the related object id
         *
         * @param  integer $object_id
         */
        public function set_object_id($object_id)
        {
        }
        /**
         * Create a new datastore of type $raw_type.
         *
         * @param string $raw_type
         * @return Datastore_Interface
         */
        public static function factory($raw_type)
        {
        }
        /**
         * An alias of factory().
         *
         * @see    Datastore::factory()
         * @return Datastore_Interface
         */
        public static function make()
        {
        }
    }
    /**
     * Key Value Datastore
     * Provides basic functionality to save in a key-value storage
     */
    abstract class Key_Value_Datastore extends \Carbon_Fields\Datastore\Datastore
    {
        /**
         * Key Toolset for key generation and comparison utilities
         *
         * @var \Carbon_Fields\Toolset\Key_Toolset
         */
        protected $key_toolset;
        /**
         * Initialize the datastore.
         */
        public function __construct()
        {
        }
        /**
         * Get array of ancestors (ordered top-bottom) with the field name appended to the end
         *
         * @param Field $field
         * @return array<string>
         */
        protected function get_full_hierarchy_for_field(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Get array of ancestor group indexes (ordered top-bottom)
         * Indexes show which entry/group this field belongs to in a Complex_Field
         *
         * @param Field $field
         * @return array<int>
         */
        protected function get_full_hierarchy_index_for_field(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Convert a cascading storage array to a value tree array
         *
         * @see Internal Glossary in DEVELOPMENT.MD
         * @param \stdClass[] $storage_array
         * @return array
         */
        protected function cascading_storage_array_to_value_tree_array($storage_array)
        {
        }
        /**
         * Convert a value set tree to a value tree for the specified field
         * (get a single value tree from the collection)
         *
         * @see Internal Glossary in DEVELOPMENT.MD
         * @param  array $value_tree_array
         * @param  Field $field
         * @return array
         */
        protected function value_tree_array_to_value_tree($value_tree_array, \Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Get a raw database query results array for a field
         *
         * @param Field $field The field to retrieve value for.
         * @param array $storage_key_patterns
         * @return \stdClass[] Array of {key, value} objects
         */
        abstract protected function get_storage_array(\Carbon_Fields\Field\Field $field, $storage_key_patterns);
        /**
         * Get the field value(s)
         *
         * @param Field $field The field to get value(s) for
         * @return null|array<array>
         */
        public function load(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Save a single key-value pair to the database
         *
         * @param string $key
         * @param string $value
         */
        abstract protected function save_key_value_pair($key, $value);
        /**
         * Save the field value(s)
         *
         * @param Field $field The field to save.
         */
        public function save(\Carbon_Fields\Field\Field $field)
        {
        }
    }
    /**
     * Abstract meta datastore class.
     */
    abstract class Meta_Datastore extends \Carbon_Fields\Datastore\Key_Value_Datastore
    {
        /**
         * Initialization tasks.
         */
        public function init()
        {
        }
        /**
         * Get a raw database query results array for a field
         *
         * @param Field $field The field to retrieve value for.
         * @param array $storage_key_patterns
         * @return \stdClass[] Array of {key, value} objects
         */
        protected function get_storage_array(\Carbon_Fields\Field\Field $field, $storage_key_patterns)
        {
        }
        /**
         * Save a single key-value pair to the database
         *
         * @param string $key
         * @param string $value
         */
        protected function save_key_value_pair($key, $value)
        {
        }
        /**
         * Delete the field value(s)
         *
         * @param Field $field The field to delete.
         */
        public function delete(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Get the type of meta data.
         */
        abstract public function get_meta_type();
        /**
         * Get the meta table name to query.
         */
        abstract public function get_table_name();
        /**
         * Get the meta table field name to query by.
         */
        abstract public function get_table_field_name();
    }
    /**
     * Comment meta datastore class.
     */
    class Comment_Meta_Datastore extends \Carbon_Fields\Datastore\Meta_Datastore
    {
        /**
         * Retrieve the type of meta data.
         *
         * @return string
         */
        public function get_meta_type()
        {
        }
        /**
         * Retrieve the meta table name to query.
         *
         * @return string
         */
        public function get_table_name()
        {
        }
        /**
         * Retrieve the meta table field name to query by.
         *
         * @return string
         */
        public function get_table_field_name()
        {
        }
    }
    /**
     * Empty datastore class.
     */
    class Empty_Datastore extends \Carbon_Fields\Datastore\Datastore
    {
        /**
         * {@inheritDoc}
         */
        public function init()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function load(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function save(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function delete(\Carbon_Fields\Field\Field $field)
        {
        }
    }
    /**
     * Post meta (custom fields) datastore class.
     */
    class Post_Meta_Datastore extends \Carbon_Fields\Datastore\Meta_Datastore
    {
        /**
         * Retrieve the type of meta data.
         *
         * @return string
         */
        public function get_meta_type()
        {
        }
        /**
         * Retrieve the meta table name to query.
         *
         * @return string
         */
        public function get_table_name()
        {
        }
        /**
         * Retrieve the meta table field name to query by.
         *
         * @return string
         */
        public function get_table_field_name()
        {
        }
    }
    class Nav_Menu_Item_Datastore extends \Carbon_Fields\Datastore\Post_Meta_Datastore
    {
        public function get_garbage_prefix()
        {
        }
        public function get_clean_field_name($field)
        {
        }
        public function get_dirty_field_name($field)
        {
        }
        /**
         * Load the field value(s)
         *
         * @param Field $field The field to load value(s) in.
         */
        public function load(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Save the field value(s)
         *
         * @param Field $field The field to save.
         */
        public function save(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Delete the field value(s)
         *
         * @param Field $field The field to delete.
         */
        public function delete(\Carbon_Fields\Field\Field $field)
        {
        }
    }
    /**
     * Theme options datastore class.
     */
    class Network_Datastore extends \Carbon_Fields\Datastore\Meta_Datastore
    {
        /**
         * {@inheritDoc}
         */
        public function get_meta_type()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function get_table_name()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function get_table_field_name()
        {
        }
    }
    /**
     * Term meta datastore class.
     */
    class Term_Meta_Datastore extends \Carbon_Fields\Datastore\Meta_Datastore
    {
        /**
         * Initialization tasks.
         */
        public function init()
        {
        }
        /**
         * Create term meta database table (for WP < 4.4)
         */
        public static function create_table()
        {
        }
        /**
         * Delete term meta on term deletion.
         * Useful for WP < 4.4.
         *
         * @param  int $term_id  Term ID.
         * @return bool Result of the deletion operation.
         */
        public static function on_delete_term($term_id)
        {
        }
        /**
         * Retrieve the type of meta data.
         *
         * @return string
         */
        public function get_meta_type()
        {
        }
        /**
         * Retrieve the meta table name to query.
         *
         * @return string
         */
        public function get_table_name()
        {
        }
        /**
         * Retrieve the meta table field name to query by.
         *
         * @return string
         */
        public function get_table_field_name()
        {
        }
    }
    /**
     * Theme options datastore class.
     */
    class Theme_Options_Datastore extends \Carbon_Fields\Datastore\Key_Value_Datastore
    {
        /**
         * Initialization tasks.
         */
        public function init()
        {
        }
        /**
         * Get a raw database query results array for a field
         *
         * @param Field $field The field to retrieve value for.
         * @param array $storage_key_patterns
         * @return array<stdClass> Array of {key, value} objects
         */
        protected function get_storage_array(\Carbon_Fields\Field\Field $field, $storage_key_patterns)
        {
        }
        /**
         * Save a single key-value pair to the database
         *
         * @param string $key
         * @param string $value
         */
        protected function save_key_value_pair($key, $value)
        {
        }
        /**
         * Save a single key-value pair to the database with autoload
         *
         * @param string $key
         * @param string $value
         * @param bool $autoload
         */
        protected function save_key_value_pair_with_autoload($key, $value, $autoload = true)
        {
        }
        /**
         * Save the field value(s)
         *
         * @param Field $field The field to save.
         */
        public function save(\Carbon_Fields\Field\Field $field)
        {
        }
        /**
         * Delete the field value(s)
         *
         * @param Field $field The field to delete.
         */
        public function delete(\Carbon_Fields\Field\Field $field)
        {
        }
    }
    /**
     * User meta datastore class.
     */
    class User_Meta_Datastore extends \Carbon_Fields\Datastore\Meta_Datastore
    {
        /**
         * Retrieve the type of meta data.
         *
         * @return string
         */
        public function get_meta_type()
        {
        }
        /**
         * Retrieve the meta table name to query.
         *
         * @return string
         */
        public function get_table_name()
        {
        }
        /**
         * Retrieve the meta table field name to query by.
         *
         * @return string
         */
        public function get_table_field_name()
        {
        }
    }
    /**
     * Widget datastore
     */
    class Widget_Datastore extends \Carbon_Fields\Datastore\Key_Value_Datastore
    {
        /**
         * Flat key-value array acting as storage
         *
         * @var array
         */
        protected $storage = array();
        /**
         * Initialization tasks.
         */
        public function init()
        {
        }
        /**
         * Override storage array
         *
         * @param array $storage
         */
        public function import_storage($storage)
        {
        }
        /**
         * Get storage array
         *
         * @return array
         */
        public function export_storage()
        {
        }
        /**
         * Get a raw database query results array for a field
         *
         * @param Field $field The field to retrieve value for.
         * @param array $storage_key_patterns
         * @return array<stdClass> Array of {key, value} objects
         */
        protected function get_storage_array(\Carbon_Fields\Field\Field $field, $storage_key_patterns)
        {
        }
        /**
         * Save a single key-value pair to the database
         *
         * @param string $key
         * @param string $value
         */
        protected function save_key_value_pair($key, $value)
        {
        }
        /**
         * Delete the field value(s)
         *
         * @param Field $field The field to delete.
         */
        public function delete(\Carbon_Fields\Field\Field $field)
        {
        }
    }
}
namespace Carbon_Fields\Event {
    class Emitter
    {
        /**
         * @var Listener[]
         */
        protected $listeners = array();
        /**
         * Broadcast an event
         */
        public function emit()
        {
        }
        /**
         * Get array of events with registered listeners
         *
         * @return array<string>
         */
        protected function get_events()
        {
        }
        /**
         * Get array of listenrs for a specific event
         *
         * @param  string          $event Event to get listeners for
         * @return array<Listener>
         */
        protected function get_listeners($event)
        {
        }
        /**
         * Remove invalid listeners from an event
         *
         * @param string $event
         */
        protected function remove_invalid_listeners($event)
        {
        }
        /**
         * Add a listener to an event
         *
         * @param string   $event
         * @param Listener $listener
         * @return Listener $listener
         */
        public function add_listener($event, $listener)
        {
        }
        /**
         * Remove a listener from any event
         *
         * @param Listener $removed_listener
         */
        public function remove_listener($removed_listener)
        {
        }
        /**
         * Add a persistent listener to an event
         *
         * @param  string   $event    The event to listen for
         * @param  string   $callable The callable to call when the event is broadcasted
         * @return Listener
         */
        public function on($event, $callable)
        {
        }
        /**
         * Add a one-time listener to an event
         *
         * @param  string   $event    The event to listen for
         * @param  string   $callable The callable to call when the event is broadcasted
         * @return Listener
         */
        public function once($event, $callable)
        {
        }
    }
    interface Listener
    {
        /**
         * Get the listener's callable
         *
         * @return callable
         */
        public function get_callable();
        /**
         * Set the listener's callable
         *
         * @param callable $callable
         */
        public function set_callable($callable);
        /**
         * Get if the listener is valid
         *
         * @return boolean
         */
        public function is_valid();
        /**
         * Notify the listener that the event has been broadcasted
         *
         * @return mixed
         */
        public function notify();
    }
    class PersistentListener implements \Carbon_Fields\Event\Listener
    {
        /**
         * Callable to call when the event is broadcasted
         *
         * @var callable
         */
        protected $callable;
        /**
         * {@inheritDoc}
         */
        public function get_callable()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_callable($callable)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function is_valid()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function notify()
        {
        }
    }
    class SingleEventListener extends \Carbon_Fields\Event\PersistentListener
    {
        /**
         * Flag if the event has been called
         *
         * @var boolean
         */
        protected $called = false;
        /**
         * {@inheritDoc}
         */
        public function is_valid()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function notify()
        {
        }
    }
}
namespace Carbon_Fields\Exception {
    class Incorrect_Syntax_Exception extends \Exception
    {
        public static $errors = array();
        public static $throw_errors = WP_DEBUG;
        /**
         * Throw an exception when WP_DEBUG is enabled, and show a friendly admin notice otherwise
         *
         * @param string $message
         * @param int    $code    (optional)
         */
        public static function raise($message, $code = 0)
        {
        }
        public static function print_errors()
        {
        }
    }
}
namespace Carbon_Fields {
    /**
     * Field proxy factory class.
     * Used for shorter namespace access when creating a field.
     *
     * @method static \Carbon_Fields\Field\Association_Field make_association( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Checkbox_Field make_checkbox( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Color_Field make_color( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Complex_Field make_complex( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Date_Field make_date( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Date_Time_Field make_date_time( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\File_Field make_file( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Footer_Scripts_Field make_footer_scripts( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Gravity_Form_Field make_gravity_form( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Header_Scripts_Field make_header_scripts( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Hidden_Field make_hidden( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Html_Field make_html( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Image_Field make_image( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Map_Field make_map( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Media_Gallery_Field make_media_gallery( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Multiselect_Field make_multiselect( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\OEmbed_Field make_oembed( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Radio_Field make_radio( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Radio_Image_Field make_radio_image( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Rich_Text_Field make_rich_text( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Select_Field make_select( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Separator_Field make_separator( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Set_Field make_set( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Sidebar_Field make_sidebar( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Text_Field make_text( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Textarea_Field make_textarea( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Time_Field make_time( string $name, string $label = null )
     * @method static \Carbon_Fields\Field\Block_Preview_Field make_html( string $name, string $label = null )
     */
    class Field
    {
        /**
         * A proxy for the abstract field factory method.
         *
         * @see    \Carbon_Fields\Field\Field::factory()
         * @return \Carbon_Fields\Field\Field
         */
        public static function factory()
        {
        }
        /**
         * An alias of factory().
         *
         * @see    \Carbon_Fields\Field\Field::factory()
         * @return \Carbon_Fields\Field\Field
         */
        public static function make()
        {
        }
        /**
         * @param string $method
         * @param array $arguments
         *
         * @return mixed
         */
        public static function __callStatic($method, $arguments)
        {
        }
    }
}
namespace Carbon_Fields\Field {
    /**
     * Base field class.
     * Defines the key container methods and their default implementations.
     * Implements factory design pattern.
     */
    class Field implements \Carbon_Fields\Datastore\Datastore_Holder_Interface
    {
        /**
         * Array of field class names that have had their activation method called
         *
         * @var array<string>
         */
        protected static $activated_field_types = array();
        /**
         * Globally unique field identificator. Generated randomly
         *
         * @var string
         */
        protected $id;
        /**
         * Stores the initial <kbd>$type</kbd> variable passed to the <code>factory()</code> method
         *
         * @see factory
         * @var string
         */
        public $type;
        /**
         * Array of ancestor field names
         *
         * @var array
         */
        protected $hierarchy = array();
        /**
         * Array of complex entry ids
         *
         * @var array
         */
        protected $hierarchy_index = array();
        /**
         * Field value
         *
         * @var Value_Set
         */
        protected $value_set;
        /**
         * Default field value
         *
         * @var mixed
         */
        protected $default_value = '';
        /**
         * Sanitized field name used as input name attribute during field render
         *
         * @see factory()
         * @see set_name()
         * @var string
         */
        protected $name;
        /**
         * Field name prefix
         *
         * @see set_name()
         * @var string
         */
        protected $name_prefix = '_';
        /**
         * The base field name which is used in the container.
         *
         * @see set_base_name()
         * @var string
         */
        protected $base_name;
        /**
         * Field name used as label during field render
         *
         * @see factory()
         * @see set_label()
         * @var string
         */
        protected $label;
        /**
         * Additional text containing information and guidance for the user
         *
         * @see help_text()
         * @var string
         */
        protected $help_text;
        /**
         * Field DataStore instance to which save, load and delete calls are delegated
         *
         * @see set_datastore()
         * @see get_datastore()
         * @var Datastore_Interface
         */
        protected $datastore;
        /**
         * Flag whether the datastore is the default one or replaced with a custom one
         *
         * @see set_datastore()
         * @see get_datastore()
         * @var boolean
         */
        protected $has_default_datastore = true;
        /**
         * The type of the container this field is in
         *
         * @see get_context()
         * @var string
         */
        protected $context;
        /**
         * Whether or not this value should be auto loaded. Applicable to theme options only.
         *
         * @see set_autoload()
         * @var bool
         */
        protected $autoload = false;
        /**
         * Key-value array of attribtues and their values
         *
         * @var array
         */
        protected $attributes = array();
        /**
         * Array of attributes the user is allowed to change
         *
         * @var array<string>
         */
        protected $allowed_attributes = array();
        /**
         * The width of the field.
         *
         * @see set_width()
         * @var int
         */
        protected $width = 0;
        /**
         * Custom CSS classes.
         *
         * @see set_classes()
         * @var array
         */
        protected $classes = array();
        /**
         * Whether or not this field is required.
         *
         * @see set_required()
         * @var bool
         */
        protected $required = false;
        /**
         * Stores the field conditional logic rules.
         *
         * @var array
         */
        protected $conditional_logic = array();
        /**
         * Whether the field should be included in the response of the requests to the REST API
         *
         * @see  set_visible_in_rest_api
         * @see  get_visible_in_rest_api
         * @var boolean
         */
        protected $visible_in_rest_api = false;
        /**
         * Clone the Value_Set object as well
         *
         * @var array
         */
        public function __clone()
        {
        }
        /**
         * Create a new field of type $raw_type and name $name and label $label.
         *
         * @param string $raw_type
         * @param string $name lower case and underscore-delimited
         * @param string $label (optional) Automatically generated from $name if not present
         * @return Field
         */
        public static function factory($raw_type, $name, $label = null)
        {
        }
        /**
         * An alias of factory().
         *
         * @see    Field::factory()
         * @return Field
         */
        public static function make()
        {
        }
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * Returns the type of the field based on the class.
         * The class is stripped by the "CarbonFields" prefix.
         * Also the "Field" suffix is removed.
         * Then underscores and backslashes are removed.
         *
         * @return string
         */
        public function get_type()
        {
        }
        /**
         * Activate the field once the container is attached.
         */
        public function activate()
        {
        }
        /**
         * Activate a field type
         *
         * @param string $class_name
         */
        public static function activate_field_type($class_name)
        {
        }
        /**
         * Prepare the field type for use
         * Called once per field type when activated
         */
        public static function field_type_activated()
        {
        }
        /**
         * Get array of hierarchy field names
         *
         * @return array
         */
        public function get_hierarchy()
        {
        }
        /**
         * Set array of hierarchy field names
         *
         * @param array $hierarchy
         * @return self  $this
         */
        public function set_hierarchy($hierarchy)
        {
        }
        /**
         * Get array of hierarchy indexes
         *
         * @return array
         */
        public function get_hierarchy_index()
        {
        }
        /**
         * Set array of hierarchy indexes
         *
         * @param array $hierarchy_index
         * @return self  $this
         */
        public function set_hierarchy_index($hierarchy_index)
        {
        }
        /**
         * Return whether the field is a root field and holds a single value
         *
         * @return bool
         */
        public function is_simple_root_field()
        {
        }
        /**
         * Perform instance initialization
         */
        public function init()
        {
        }
        /**
         * Instance initialization when in the admin area
         * Called during field boot
         */
        public function admin_init()
        {
        }
        /**
         * Enqueue scripts and styles in admin
         * Called once per field type
         */
        public static function admin_enqueue_scripts()
        {
        }
        /**
         * Get value from datastore
         *
         * @param bool $fallback_to_default
         * @return mixed
         */
        protected function get_value_from_datastore($fallback_to_default = true)
        {
        }
        /**
         * Load value from datastore
         */
        public function load()
        {
        }
        /**
         * Save value to storage
         */
        public function save()
        {
        }
        /**
         * Delete value from storage
         */
        public function delete()
        {
        }
        /**
         * Load the field value from an input array based on its name
         *
         * @param  array $input Array of field names and values.
         * @return self  $this
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * Return whether the datastore instance is the default one or has been overriden
         *
         * @return boolean
         */
        public function has_default_datastore()
        {
        }
        /**
         * Get the DataStore instance
         *
         * @return Datastore_Interface $datastore
         */
        public function get_datastore()
        {
        }
        /**
         * Set datastore instance
         *
         * @param  Datastore_Interface $datastore
         * @param  boolean             $set_as_default
         * @return self                $this
         */
        public function set_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $set_as_default = false)
        {
        }
        /**
         * Return the type of the container this field is in
         *
         * @return string
         */
        public function get_context()
        {
        }
        /**
         * Assign the type of the container this field is in
         *
         * @param  string $context
         * @return self   $this
         */
        public function set_context($context)
        {
        }
        /**
         * Get the Value_Set object
         *
         * @return Value_Set
         */
        public function get_value_set()
        {
        }
        /**
         * Set the Value_Set object
         *
         * @param  Value_Set $value_set
         * @return self      $this
         */
        public function set_value_set($value_set)
        {
        }
        /**
         * Alias for $this->get_value_set()->get(); with fallback to default value
         *
         * @return mixed
         */
        public function get_value()
        {
        }
        /**
         * Alias for $this->get_value_set()->get_set(); with fallback to default value
         *
         * @return array<array>
         */
        public function get_full_value()
        {
        }
        /**
         * Return a differently formatted value for end-users
         *
         * @return mixed
         */
        public function get_formatted_value()
        {
        }
        /**
         * Alias for $this->get_value_set()->set( $value );
         *
         * @param mixed $value
         * @return self  $this
         */
        public function set_value($value)
        {
        }
        /**
         * Clear the field value to a blank one (but not the default one)
         */
        public function clear_value()
        {
        }
        /**
         * Get default field value
         *
         * @return mixed
         */
        public function get_default_value()
        {
        }
        /**
         * Set default field value
         *
         * @param  mixed $default_value
         * @return $this
         */
        public function set_default_value($default_value)
        {
        }
        /**
         * Return the field base name.
         *
         * @return string
         */
        public function get_base_name()
        {
        }
        /**
         * Set field base name as defined in the container.
         *
         * @param string $name
         * @return self  $this
         */
        public function set_base_name($name)
        {
        }
        /**
         * Return the field name
         *
         * @return string
         */
        public function get_name()
        {
        }
        /**
         * Set field name.
         * Use only if you are completely aware of what you are doing.
         *
         * @param  string $name Field name, either sanitized or not
         * @return self   $this
         */
        public function set_name($name)
        {
        }
        /**
         * Return the field name prefix
         *
         * @return string
         */
        public function get_name_prefix()
        {
        }
        /**
         * Set field name prefix
         * Use only if you are completely aware of what you are doing.
         *
         * @param  string $name_prefix
         * @return self   $this
         */
        public function set_name_prefix($name_prefix)
        {
        }
        /**
         * Return field label.
         *
         * @return string
         */
        public function get_label()
        {
        }
        /**
         * Set field label.
         *
         * @param  string $label If null, the label will be generated from the field name
         * @return self   $this
         */
        public function set_label($label)
        {
        }
        /**
         * Get a key-value array of attributes
         *
         * @return array
         */
        public function get_attributes()
        {
        }
        /**
         * Get an attribute value
         *
         * @param  string $name
         * @return string
         */
        public function get_attribute($name)
        {
        }
        /**
         * Set an attribute and its value
         *
         * @param  string $name
         * @param  string $value
         * @return self   $this
         */
        public function set_attribute($name, $value = '')
        {
        }
        /**
         * Set a key=>value array of attributes
         *
         * @param  array $attributes
         * @return self  $this
         */
        public function set_attributes($attributes)
        {
        }
        /**
         * Return the field help text
         *
         * @return string
         */
        public function get_help_text()
        {
        }
        /**
         * Set additional text to be displayed during field render,
         * containing information and guidance for the user
         *
         * @param string $help_text
         * @return self  $this
         */
        public function set_help_text($help_text)
        {
        }
        /**
         * Alias for set_help_text()
         *
         * @see set_help_text()
         * @param string $help_text
         * @return object $this
         */
        public function help_text($help_text)
        {
        }
        /**
         * Return whether or not this value should be auto loaded.
         *
         * @return bool
         */
        public function get_autoload()
        {
        }
        /**
         * Whether or not this value should be auto loaded. Applicable to theme options only.
         *
         * @param  bool  $autoload
         * @return self  $this
         */
        public function set_autoload($autoload)
        {
        }
        /**
         * Get the field width.
         *
         * @return int $width
         */
        public function get_width()
        {
        }
        /**
         * Set the field width.
         *
         * @param  int   $width
         * @return self  $this
         */
        public function set_width($width)
        {
        }
        /**
         * Get custom CSS classes.
         *
         * @return array<string>
         */
        public function get_classes()
        {
        }
        /**
         * Set CSS classes that the container should use.
         *
         * @param  string|array<string> $classes
         * @return self                 $this
         */
        public function set_classes($classes)
        {
        }
        /**
         * Whether this field is mandatory for the user
         *
         * @param  bool  $required
         * @return self  $this
         */
        public function set_required($required = true)
        {
        }
        /**
         * Return whether this field is mandatory for the user
         *
         * @return bool
         */
        public function is_required()
        {
        }
        /**
         * HTML id attribute getter.
         * @return string
         */
        public function get_id()
        {
        }
        /**
         * HTML id attribute setter
         *
         * @param  string $id
         * @return self   $this
         */
        public function set_id($id)
        {
        }
        /**
         * Set the field visibility conditional logic.
         *
         * @param  array
         * @return self  $this
         */
        public function set_conditional_logic($rules)
        {
        }
        /**
         * Get the conditional logic rules
         *
         * @return array
         */
        public function get_conditional_logic()
        {
        }
        /**
         * Validate and parse a conditional logic rule.
         *
         * @param  array $rule
         * @return array
         */
        protected function parse_conditional_rule($rule)
        {
        }
        /**
         * Validate and parse conditional logic rules.
         *
         * @param  array $rules
         * @return array
         */
        protected function parse_conditional_rules($rules)
        {
        }
        /**
         * Set the REST visibility of the field
         *
         * @param  bool  $visible
         * @return self  $this
         */
        public function set_visible_in_rest_api($visible = true)
        {
        }
        /**
         * Get the REST visibility of the field
         *
         * @return bool
         */
        public function get_visible_in_rest_api()
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Hook administration scripts.
         */
        public static function admin_hook_scripts()
        {
        }
        /**
         * Hook administration styles.
         */
        public static function admin_hook_styles()
        {
        }
    }
    /**
     * Association field class.
     * Allows selecting and manually sorting entries from various types:
     *  - Posts
     *  - Terms
     *  - Users
     *  - Comments
     */
    class Association_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * WP_Toolset instance for WP data loading
         *
         * @var \Carbon_Fields\Toolset\WP_Toolset
         */
        protected $wp_toolset;
        /**
         * Min number of selected items allowed. -1 for no limit
         *
         * @var integer
         */
        protected $min = -1;
        /**
         * Max number of selected items allowed. -1 for no limit
         *
         * @var integer
         */
        protected $max = -1;
        /**
         * Max items per page. -1 for no limit
         *
         * @var integer
         */
        protected $items_per_page = 20;
        /**
         * Allow items to be added multiple times
         *
         * @var boolean
         */
        protected $duplicates_allowed = false;
        /**
         * Default field value
         *
         * @var array
         */
        protected $default_value = array();
        /**
         * Types of entries to associate with.
         * @var array
         */
        protected $types = array(array('type' => 'post', 'post_type' => 'post'));
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value($value)
        {
        }
        /**
         * Get value string for legacy value
         *
         * @param string $legacy_value
         * @return string
         */
        protected function get_value_string_for_legacy_value($legacy_value)
        {
        }
        /**
         * Convert a colon:separated:string into its expected components
         * Used for backwards compatibility to CF 1.5
         *
         * @param string $value_string
         * @return array
         */
        protected function value_string_to_property_array($value_string)
        {
        }
        /**
         * Convert a colon:separated:string into its expected components
         * Used for backwards compatibility to CF 1.5
         *
         * @param array $value_string_array
         * @return array<array>
         */
        protected function value_string_array_to_value_set($value_string_array)
        {
        }
        /**
         * Generate the item options.
         *
         * @access public
         *
         * @param  array $args
         * @return array $options The selectable options of the association field.
         */
        public function get_options($args = array())
        {
        }
        /**
         * Get the types.
         *
         * @access public
         *
         * @return array
         */
        public function get_types()
        {
        }
        /**
         * Modify the types.
         *
         * @param  array $types New types
         * @return self  $this
         */
        public function set_types($types)
        {
        }
        /**
         * Get the minimum allowed number of selected entries.
         *
         * @return int
         */
        public function get_min()
        {
        }
        /**
         * Set the minimum allowed number of selected entries.
         *
         * @param  int   $min
         * @return self  $this
         */
        public function set_min($min)
        {
        }
        /**
         * Get the maximum allowed number of selected entries.
         *
         * @return int
         */
        public function get_max()
        {
        }
        /**
         * Set the maximum allowed number of selected entries.
         *
         * @param  int   $max
         * @return self  $this
         */
        public function set_max($max)
        {
        }
        /**
         * Set the items per page.
         *
         * @param  int   $items_per_page
         * @return self  $this
         */
        public function set_items_per_page($items_per_page)
        {
        }
        /**
         * Get the items per page.
         *
         * @return int
         */
        public function get_items_per_page()
        {
        }
        /**
         * Get whether entry duplicates are allowed.
         *
         * @return boolean
         */
        public function get_duplicates_allowed()
        {
        }
        /**
         * Set whether entry duplicates are allowed.
         *
         * @param  boolean $allowed
         * @return self    $this
         */
        public function set_duplicates_allowed($allowed)
        {
        }
        /**
         * Specify whether to allow each entry to be selected multiple times.
         * Backwards-compatibility alias.
         *
         * @param  boolean $allow
         * @return self    $this
         */
        public function allow_duplicates($allow = true)
        {
        }
        /**
         * Converts the field values into a usable associative array.
         *
         * The association data is saved in the database in the following format:
         * 	array (
         *		0 => 'post:page:4',
         *		1 => 'term:category:2',
         *		2 => 'user:user:1',
         * 	)
         * where the value of each array item contains:
         * 	- Type of data (post, term, user or comment)
         * 	- Subtype of data (the particular post type or taxonomy)
         * 	- ID of the item (the database ID of the item)
         */
        protected function value_to_json()
        {
        }
        /**
         * Convert the field data into JSON representation.
         * @param  bool $load Whether to load data from the datastore.
         * @return mixed      The JSON field data.
         */
        public function to_json($load)
        {
        }
        /**
         * Helper method to prepare the SQL needed to search for options of type 'post'.
         *
         * Creates a 'fake' WP_Query with only one result in order to catch the SQL
         * that it will construct in order to support all of the WP_Query arguments.
         *
         * @access public
         *
         * @param  array  $args
         * @return string
         */
        public function get_post_options_sql($args = array())
        {
        }
        /**
         * Modify the "SELECT" columns for the WP_Query.
         *
         * @access public
         *
         * @param  string $fields
         * @return string
         */
        public function get_post_options_sql_select_clause($fields)
        {
        }
        /**
         * Helper method to prepare the SQL needed to search for options of type 'term'.
         *
         * Creates a 'fake' WP_Term_Query with only one result in order to catch the SQL
         * that it will construct in order to support all of the WP_Term_Query arguments.
         *
         * @access public
         *
         * @param  array  $args
         * @return string
         */
        public function get_term_options_sql($args = array())
        {
        }
        /**
         * Modify the "SELECT" columns for the WP_Term_Query.
         *
         * @access public
         *
         * @param  array  $fields
         * @return array
         */
        public function get_term_options_sql_select_clause($fields)
        {
        }
        /**
         * Modify the clauses for the SQL request of the WP_Term_Query.
         *
         * @access public
         *
         * @param  array  $clauses
         * @return array
         */
        public function get_term_options_sql_clauses($clauses)
        {
        }
        /**
         * Helper method to prepare the SQL needed to search for options of type 'user'.
         *
         * Creates a 'fake' WP_User_Query with only one result in order to catch the SQL
         * that it will construct in order to support all of the WP_User_Query arguments.
         *
         * @access public
         *
         * @param  array  $args
         * @return string
         */
        public function get_user_options_sql($args = array())
        {
        }
        /**
         * Helper method to prepare the SQL needed to search for options of type 'comment'.
         *
         * Creates a 'fake' WP_Comment_Query with only one result in order to catch the SQL
         * that it will construct in order to support all of the WP_Comment_Query arguments.
         *
         * @access public
         *
         * @param  array  $args
         * @return string
         */
        public function get_comment_options_sql($args = array())
        {
        }
        /**
         * Modify the "SELECT" columns and the clauses for the SQL request
         * performed by the WP_Comment_Query.
         *
         * @access public
         *
         * @param  array  $clauses
         * @return array
         */
        public function get_comments_clauses($clauses)
        {
        }
        /**
         * Used to get the thumbnail of an item.
         *
         * Can be overriden or extended by the `carbon_fields_association_field_option_thumbnail` filter.
         *
         * @param int $id The database ID of the item.
         * @param string $type Item type (post, term, user, comment, or a custom one).
         * @param string $subtype The subtype - "page", "post", "category", etc.
         * @return string $title The title of the item.
         */
        public function get_thumbnail_by_type($id, $type, $subtype = '')
        {
        }
        /**
         * Used to get the title of an item.
         *
         * Can be overriden or extended by the `carbon_association_title` filter.
         *
         * @param int $id The database ID of the item.
         * @param string $type Item type (post, term, user, comment, or a custom one).
         * @param string $subtype The subtype - "page", "post", "category", etc.
         * @return string $title The title of the item.
         */
        public function get_title_by_type($id, $type, $subtype = '')
        {
        }
        /**
         * Used to get the label of an item.
         *
         * Can be overriden or extended by the `carbon_association_item_label` filter.
         *
         * @param int     $id      The database ID of the item.
         * @param string  $type    Item type (post, term, user, comment, or a custom one).
         * @param string  $subtype Subtype - "page", "post", "category", etc.
         * @return string $label The label of the item.
         */
        public function get_item_label($id, $type, $subtype = '')
        {
        }
        /**
         * Retrieve the edit link of a particular object.
         *
         * @param  array $type Object type.
         * @param  int $id      ID of the object.
         * @return string       URL of the edit link.
         */
        protected function get_object_edit_link($type, $id)
        {
        }
        /**
         * Prepares an option of type 'post' for JS usage.
         *
         * @param  \stdClass  $data
         * @return array
         */
        public function format_post_option($data)
        {
        }
        /**
         * Prepares an option of type 'term' for JS usage.
         *
         * @param  \stdClass  $data
         * @return array
         */
        public function format_term_option($data)
        {
        }
        /**
         * Prepares an option of type 'comment' for JS usage.
         *
         * @param  \stdClass  $data
         * @return array
         */
        public function format_comment_option($data)
        {
        }
        /**
         * Prepares an option of type 'user' for JS usage.
         *
         * @param  \stdClass  $data
         * @return array
         */
        public function format_user_option($data)
        {
        }
    }
    /**
     * Block Preview field class.
     * Allows to create a field that displays any HTML in a
     * Block Preview (visible when clicking on the "plus" sign in the
     * Gutenberg Editor). This type of fields would be printed only inside the preview
     * and would be hidden inside all other containers.
     */
    class Block_Preview_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * HTML contents to display
         *
         * @var string
         */
        public $field_html = '';
        /**
         * Set the field HTML or callback that returns the HTML.
         *
         * @param  string|callable $callback_or_html HTML or callable that returns the HTML.
         * @return self            $this
         */
        public function set_html($callback_or_html)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Whether this field is required.
         * The Block Preview field is non-required by design.
         *
         * @return false
         */
        public function is_required()
        {
        }
        /**
         * Load the field value.
         * Skipped, no value to be loaded.
         */
        public function load()
        {
        }
        /**
         * Save the field value.
         * Skipped, no value to be saved.
         */
        public function save()
        {
        }
        /**
         * Delete the field value.
         * Skipped, no value to be deleted.
         */
        public function delete()
        {
        }
    }
    /**
     * Broken field class.
     */
    class Broken_Field extends \Carbon_Fields\Field\Field
    {
    }
    /**
     * Single checkbox field class.
     */
    class Checkbox_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * @{inheritDoc}
         */
        protected $default_value = false;
        /**
         * The value that is saved in the database when
         * this checkbox field is enabled.
         *
         * @var string
         */
        protected $option_value = 'yes';
        /**
         * Get the option value.
         *
         * @return string
         */
        public function get_option_value()
        {
        }
        /**
         * Set the option value.
         *
         * @param  string $value New value
         * @return self   $this
         */
        public function set_option_value($value)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value($value)
        {
        }
        /**
         * Return a differently formatted value for end-users
         *
         * @return mixed
         */
        public function get_formatted_value()
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         * In addition to default data, option value and label are added.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Get the field label.
         * Label here is empty because it is displayed in the front-end.
         *
         * @return string Label of the field.
         */
        public function get_label()
        {
        }
    }
    /**
     * Color picker field class.
     */
    class Color_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * Flag whether to enable alpha selection
         *
         * @var boolean
         */
        protected $alpha_enabled = false;
        /**
         * Array of hex colors to show in the color picker
         *
         * @var array<string>
         */
        protected $palette = array();
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Get color presets
         *
         * @return array<string>
         */
        public function get_palette()
        {
        }
        /**
         * Set color presets
         *
         * @param  array<string> $palette
         * @return self          $this
         */
        public function set_palette($palette)
        {
        }
        /**
         * Get whether alpha is enabled
         *
         * @return boolean
         */
        public function get_alpha_enabled()
        {
        }
        /**
         * Set whether alpha is enabled
         *
         * @param  boolean $enabled
         * @return self    $this
         */
        public function set_alpha_enabled($enabled = true)
        {
        }
    }
    /**
     * Complex field class.
     * Allows nested repeaters with multiple field groups to be created.
     */
    class Complex_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * Visual layout type constants
         */
        const LAYOUT_GRID = 'grid';
        // default
        const LAYOUT_TABBED_HORIZONTAL = 'tabbed-horizontal';
        const LAYOUT_TABBED_VERTICAL = 'tabbed-vertical';
        const TYPE_PROPERTY = '_type';
        /**
         * Default field value
         *
         * @var array
         */
        protected $default_value = array();
        /**
         * Complex field layout
         *
         * @var string static::LAYOUT_* constant
         */
        protected $layout = self::LAYOUT_GRID;
        /**
         * Value tree describing the complex values and all groups with their child fields
         *
         * @var array
         */
        protected $value_tree = array();
        /**
         * Array of groups registered for this complex field
         *
         * @var array
         */
        protected $groups = array();
        /**
         * Minimum number of entries. -1 for no limit
         *
         * @var integer
         */
        protected $values_min = -1;
        /**
         * Maximum number of entries. -1 for no limit
         *
         * @var integer
         */
        protected $values_max = -1;
        /**
         * Default entry state - collapsed or not
         *
         * @var boolean
         */
        protected $collapsed = false;
        /**
         * Defines whether duplicate groups are allowed or not
         *
         * @var boolean
         */
        protected $duplicate_groups_allowed = true;
        /**
         * Entry labels
         * These are translated in init()
         *
         * @var array
         */
        public $labels = array('singular_name' => 'Entry', 'plural_name' => 'Entries');
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * Initialization tasks.
         */
        public function init()
        {
        }
        /**
         * Set array of hierarchy field names
         *
         * @param array $hierarchy
         * @return self  $this
         */
        public function set_hierarchy($hierarchy)
        {
        }
        /**
         * Propagate hierarchy to child fields
         */
        public function update_child_hierarchy()
        {
        }
        /**
         * Activate the field once the container is attached.
         */
        public function activate()
        {
        }
        /**
         * Set the datastore of this field and propagate it to children
         *
         * @param  Datastore_Interface $datastore
         * @param  boolean             $set_as_default
         * @return self                $this
         */
        public function set_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $set_as_default = false)
        {
        }
        /**
         * Propagate the datastore down the hierarchy
         *
         * @param Datastore_Interface $datastore
         * @param boolean             $set_as_default
         */
        protected function update_child_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $set_as_default = false)
        {
        }
        /**
         * Retrieve all groups of fields.
         *
         * @return array $fields
         */
        public function get_fields()
        {
        }
        /**
         * Add a set/group of fields.
         *
         * Accepted param variations:
         *   - array<Field> $fields
         *   - string $group_name, array<Field> $fields
         *   - string $group_name, string $group_label, array<Field> $fields
         *
         * @return $this
         */
        public function add_fields()
        {
        }
        /**
         * Retrieve the groups of this field.
         *
         * @return array
         */
        public function get_group_names()
        {
        }
        /**
         * Retrieve a group by its name.
         *
         * @param  string $group_name        Group name
         * @return Group_Field $group_object Group object
         */
        public function get_group_by_name($group_name)
        {
        }
        /**
         * Set the group label Underscore template.
         *
         * @param  string|callable $template
         * @return self            $this
         */
        public function set_header_template($template)
        {
        }
        /**
         * Set the field labels.
         * Currently supported values:
         *  - singular_name - the singular entry label
         *  - plural_name - the plural entries label
         *
         * @param  array $labels Labels
         * @return Complex_Field
         */
        public function setup_labels($labels)
        {
        }
        /**
         * Return a clone of a field with hierarchy settings applied
         *
         * @param Field $field
         * @param Field $parent_field
         * @param int $group_index
         * @return Field
         */
        public function get_clone_under_field_in_hierarchy($field, $parent_field, $group_index = 0)
        {
        }
        protected function get_prefilled_group_fields($group_fields, $group_values, $group_index)
        {
        }
        protected function get_prefilled_groups($groups, $value_tree)
        {
        }
        /**
         * Load the field value from an input array based on its name.
         *
         * @param  array $input Array of field names and values.
         * @return self  $this
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * Save all contained groups of fields.
         */
        public function save()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function get_formatted_value()
        {
        }
        /**
         * Convert an externally-keyed value array ('_type' => ...)
         * to an internally-keyed one ('value' => ...)
         *
         * @param  mixed $value
         * @return mixed
         */
        protected function external_to_internal_value($value)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value($value)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_default_value($default_value)
        {
        }
        /**
         * Return the full value tree of all groups and their fields
         *
         * @return mixed
         */
        public function get_value_tree()
        {
        }
        /**
         * Set the full value tree of all groups and their fields
         *
         * @see    Internal Glossary in DEVELOPMENT.MD
         * @param array $value_tree
         * @return self     $this
         */
        public function set_value_tree($value_tree)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Modify the layout of this field.
         *
         * @param  string $layout
         * @return self   $this
         */
        public function set_layout($layout)
        {
        }
        /**
         * Get the minimum number of entries.
         *
         * @return int $min
         */
        public function get_min()
        {
        }
        /**
         * Set the minimum number of entries.
         *
         * @param  int   $min
         * @return self  $this
         */
        public function set_min($min)
        {
        }
        /**
         * Get the maximum number of entries.
         *
         * @return int $max
         */
        public function get_max()
        {
        }
        /**
         * Set the maximum number of entries.
         *
         * @param  int   $max
         * @return self  $this
         */
        public function set_max($max)
        {
        }
        /**
         * Get collapsed state
         *
         * @return bool
         */
        public function get_collapsed()
        {
        }
        /**
         * Change the groups initial collapse state.
         * This state relates to the state of which the groups are rendered.
         *
         * @param  bool  $collapsed
         * @return self  $this
         */
        public function set_collapsed($collapsed = true)
        {
        }
        /**
         * Get whether duplicate groups are allowed.
         *
         * @return bool
         */
        public function get_duplicate_groups_allowed()
        {
        }
        /**
         * Set whether duplicate groups are allowed.
         *
         * @param  bool  $allowed
         * @return self  $this
         */
        public function set_duplicate_groups_allowed($allowed)
        {
        }
    }
    /**
     * Date picker field class.
     */
    class Date_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * {@inheritDoc}
         */
        protected $allowed_attributes = array('placeholder', 'autocomplete');
        /**
         * The storage format for use in PHP
         *
         * @var string
         */
        protected $storage_format = 'Y-m-d';
        /**
         * The expected input format for use in PHP
         *
         * @var string
         */
        protected $input_format_php = 'Y-m-d';
        /**
         * The expected input format for use in Flatpickr JS
         *
         * @var string
         */
        protected $input_format_js = 'Y-m-d';
        /**
         * Picker options.
         *
         * @var array
         */
        protected $picker_options = array('allowInput' => true, 'altInput' => true, 'altFormat' => "j M Y");
        /**
         * {@inheritDoc}
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function to_json($load)
        {
        }
        /**
         * Get storage format
         *
         * @return string
         */
        public function get_storage_format()
        {
        }
        /**
         * Set storage format
         *
         * @param  string $storage_format
         * @return self   $this
         */
        public function set_storage_format($storage_format)
        {
        }
        /**
         * Get the expected input format in php and js variants
         *
         * @param string $php_format
         * @param string $js_format
         * @return self $this
         */
        public function get_input_format($php_format, $js_format)
        {
        }
        /**
         * Set a format for use on the front-end in both PHP and Flatpickr formats
         * The formats should produce identical results (i.e. they are translations of each other)
         *
         * @param  string $php_format
         * @param  string $js_format
         * @return self   $this
         */
        public function set_input_format($php_format, $js_format)
        {
        }
        /**
         * Returns the picker options.
         *
         * @return array
         */
        public function get_picker_options()
        {
        }
        /**
         * Set datepicker options
         *
         * @param  array $options
         * @return self  $this
         */
        public function set_picker_options($options)
        {
        }
    }
    /**
     * Time picker field class.
     */
    class Time_Field extends \Carbon_Fields\Field\Date_Field
    {
        /**
         * {@inheritDoc}
         */
        protected $picker_options = array('allowInput' => true, 'enableTime' => true, 'noCalendar' => true, 'enableSeconds' => true, 'altInput' => true, 'altFormat' => "h:i:S K");
        /**
         * {@inheritDoc}
         */
        protected $storage_format = 'H:i:s';
        /**
         * {@inheritDoc}
         */
        protected $input_format_php = 'g:i:s A';
        /**
         * {@inheritDoc}
         */
        protected $input_format_js = 'h:i:S K';
        public function get_storage_format()
        {
        }
    }
    /**
     * Date and time picker field class.
     */
    class Date_Time_Field extends \Carbon_Fields\Field\Time_Field
    {
        /**
         * {@inheritDoc}
         */
        protected $picker_options = array('allowInput' => true, 'enableTime' => true, 'enableSeconds' => true);
        /**
         * {@inheritDoc}
         */
        protected $storage_format = 'Y-m-d H:i:s';
        /**
         * {@inheritDoc}
         */
        protected $input_format_php = 'Y-m-d g:i:s A';
        /**
         * {@inheritDoc}
         */
        protected $input_format_js = 'Y-m-d h:i:S K';
    }
    /**
     * File upload field class.
     *
     * Allows selecting and saving a media attachment file,
     * where the file ID is saved in the database.
     */
    class File_Field extends \Carbon_Fields\Field\Field
    {
        // empty for all types. available types: audio, video, image and all WordPress-recognized mime types
        public $field_type = '';
        // alt, author, caption, dateFormatted, description, editLink, filename, height, icon, id, link, menuOrder, mime, name, status, subtype, title, type, uploadedTo, url, width
        public $value_type = 'id';
        /**
         * Change the type of the field
         *
         * @param string $type
         * @return File_Field
         */
        public function set_type($type)
        {
        }
        /**
         * Change the value type of the field.
         *
         * @param string $value_type
         * @return File_Field
         */
        public function set_value_type($value_type)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @access public
         *
         * @param  bool  $load Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * Textarea field class.
     */
    class Textarea_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * {@inheritDoc}
         */
        protected $allowed_attributes = array('maxLength', 'minLength', 'placeholder', 'readOnly', 'is', 'autocomplete');
        /**
         * Number of rows (affects textarea height)
         *
         * @var integer
         */
        protected $rows = 5;
        /**
         * Change the number of rows of this field.
         *
         * @param  integer $rows Number of rows
         * @return self    $this
         */
        public function set_rows($rows = 0)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param  bool  $load Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * Abstract scripts field class.
     * Intended only for use in theme options container.
     */
    abstract class Scripts_Field extends \Carbon_Fields\Field\Textarea_Field
    {
        /**
         * Hook to putput scripts in
         *
         * @var string
         */
        protected $hook_name = '';
        /**
         * Hook priority to use
         *
         * @var integer
         */
        protected $hook_priority = 10;
        /**
         * Initialization actions
         */
        public function init()
        {
        }
        /**
         * Attach the assigned hook
         */
        public function attach_hook()
        {
        }
        /**
         * Display the field value in the front-end header.
         */
        public function print_scripts()
        {
        }
        /**
         * Get the hook name
         *
         * @return string
         */
        public function get_hook_name()
        {
        }
        /**
         * Set the hook name
         *
         * @param  string $hook_name
         * @return self   $this
         */
        public function set_hook_name($hook_name)
        {
        }
        /**
         * Get the hook priority
         *
         * @return integer
         */
        public function get_hook_priority()
        {
        }
        /**
         * Set the hook priority
         *
         * @param  integer $hook_priority
         * @return self    $this
         */
        public function set_hook_priority($hook_priority)
        {
        }
        /**
         * Set the hook name and priority
         *
         * @param  string  $hook_name
         * @param  integer $hook_priority
         * @return self    $this
         */
        public function set_hook($hook_name, $hook_priority = 10)
        {
        }
        /**
         * Get the default help text to be displayed for this field type.
         *
         * @return string
         */
        abstract protected function get_default_help_text();
    }
    /**
     * Footer scripts field class.
     * Intended only for use in theme options container.
     */
    class Footer_Scripts_Field extends \Carbon_Fields\Field\Scripts_Field
    {
        /**
         * {@inheritDoc}
         */
        protected $hook_name = 'wp_footer';
        /**
         * {@inheritDoc}
         */
        protected function get_default_help_text()
        {
        }
    }
    /**
     * Base class for fields with predefined options.
     * Mainly used to reduce the bloat on the base Field class.
     */
    abstract class Predefined_Options_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * Stores the raw, unprocessed field options
         *
         * @var array(array|callable)
         */
        protected $option_collections = array();
        /**
         * Check if an array is indexed
         *
         * @param  array   $array
         * @return boolean
         */
        protected function is_indexed_array($array)
        {
        }
        /**
         * Set the options of this field.
         * Accepts either array of data or a callback that returns the data.
         *
         * @param  array|callable $options
         * @return self           $this
         */
        public function set_options($options)
        {
        }
        /**
         * Add new options to this field.
         * Accepts either array of data or a callback that returns the data.
         *
         * @param  array|callable $options
         * @return self           $this
         */
        public function add_options($options)
        {
        }
        /**
         * Get a populated array of options executing any callbacks in the process
         *
         * @return array
         */
        protected function load_options()
        {
        }
        /**
         * Retrieve the current options.
         *
         * @return array
         */
        public function get_options()
        {
        }
        /**
         * Retrieve the current options' values only.
         *
         * @return array $options
         */
        protected function get_options_values()
        {
        }
        /**
         * Changes the options array structure. This is needed to keep the array items order when it is JSON encoded.
         * Will also work with a callable that returns an array.
         *
         * @param array|callable $options
         * @param bool $stringify_value (optional)
         * @return array
         */
        protected function parse_options($options, $stringify_value = false)
        {
        }
        /**
         * Get an array of all values that are both in the passed array and the predefined list of options
         *
         * @param  array $values
         * @return array
         */
        protected function get_values_from_options($values)
        {
        }
    }
    /**
     * Select dropdown field class.
     */
    class Select_Field extends \Carbon_Fields\Field\Predefined_Options_Field
    {
        /**
         * {@inheritDoc}
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function to_json($load)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function get_formatted_value()
        {
        }
    }
    /**
     * Gravity Form selection field class
     */
    class Gravity_Form_Field extends \Carbon_Fields\Field\Select_Field
    {
        /**
         * Whether the Gravity Forms plugin is installed and activated.
         *
         * @return bool
         */
        public function is_plugin_active()
        {
        }
        /**
         * {@inheritDoc}
         */
        protected function load_options()
        {
        }
        /**
         * Set the available forms as field options
         *
         * @return array
         */
        protected function get_gravity_form_options()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function to_json($load)
        {
        }
    }
    class Group_Field
    {
        /**
         * Default name to use for groups which have no name defined by the user
         */
        const DEFAULT_GROUP_NAME = '_';
        /**
         * Unique group identificator. Generated randomly.
         *
         * @var string
         */
        protected $group_id;
        /**
         * Sanitized group name.
         *
         * @var string
         */
        protected $name;
        /**
         * Group label, used during rendering.
         *
         * @var string
         */
        protected $label;
        /**
         * Group label template.
         *
         * @var string
         */
        protected $label_template;
        /**
         * Group fields.
         *
         * @var array
         */
        protected $fields = array();
        /**
         * List of registered unique field names
         *
         * @see register_field_name()
         * @var array
         */
        protected $registered_field_names = array();
        /**
         * Create a group field with the specified name and label.
         *
         * @param string $name
         * @param string $label
         * @param array  $fields
         */
        public function __construct($name, $label, $fields)
        {
        }
        /**
         * Add a group of fields.
         *
         * @param array $fields
         */
        public function add_fields($fields)
        {
        }
        /**
         * Fields attribute getter.
         *
         * @return array
         */
        public function get_fields()
        {
        }
        /**
         * Return the names of all fields.
         *
         * @return array
         */
        public function get_field_names()
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Group ID attribute getter.
         *
         * @return string
         */
        public function get_group_id()
        {
        }
        /**
         * Set the group label.
         *
         * @param  string $label If null, the label will be generated from the group name
         * @return self   $this
         */
        public function set_label($label)
        {
        }
        /**
         * Label attribute getter.
         *
         * @return string
         */
        public function get_label()
        {
        }
        /**
         * Set the label template.
         *
         * @param  string $template
         * @return self   $this
         */
        public function set_label_template($template)
        {
        }
        /**
         * Get the label template.
         *
         * @return string
         */
        public function get_label_template()
        {
        }
        /**
         * Print the label template.
         */
        public function template_label()
        {
        }
        /**
         * Set the group name.
         *
         * @param  string $name Group name, either sanitized or not
         * @return self   $this
         */
        public function set_name($name)
        {
        }
        /**
         * Return the group name.
         *
         * @return string
         */
        public function get_name()
        {
        }
        /**
         * Assign a DataStore instance for all group fields.
         *
         * @param  Datastore_Interface  $datastore
         * @param  boolean $set_as_default
         * @return self    $this
         */
        public function set_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $set_as_default = false)
        {
        }
        /**
         * Perform checks whether there is a field registered with the name $name.
         * If not, the field name is recorded.
         *
         * @param string $name
         * @return boolean
         */
        public function register_field_name($name)
        {
        }
    }
    /**
     * Header scripts field class.
     * Intended only for use in theme options container.
     */
    class Header_Scripts_Field extends \Carbon_Fields\Field\Scripts_Field
    {
        /**
         * {@inheritDoc}
         */
        protected $hook_name = 'wp_head';
        /**
         * {@inheritDoc}
         */
        protected function get_default_help_text()
        {
        }
    }
    /**
     * Hidden field class.
     */
    class Hidden_Field extends \Carbon_Fields\Field\Field
    {
        protected $hidden = false;
        /**
         * Get hidden state
         *
         * @return bool
         */
        public function get_hidden()
        {
        }
        /**
         * This states configures if the field is shown in the backend.
         *
         * @param  bool  $hidden
         * @return self  $this
         */
        public function set_hidden($hidden = true)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * HTML field class.
     * Allows to create a field that displays any HTML in a container.
     */
    class Html_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * HTML contents to display
         *
         * @var string
         */
        public $field_html = '';
        /**
         * Set the field HTML or callback that returns the HTML.
         *
         * @param  string|callable $callback_or_html HTML or callable that returns the HTML.
         * @return self            $this
         */
        public function set_html($callback_or_html)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Whether this field is required.
         * The HTML field is non-required by design.
         *
         * @return false
         */
        public function is_required()
        {
        }
        /**
         * Load the field value.
         * Skipped, no value to be loaded.
         */
        public function load()
        {
        }
        /**
         * Save the field value.
         * Skipped, no value to be saved.
         */
        public function save()
        {
        }
        /**
         * Delete the field value.
         * Skipped, no value to be deleted.
         */
        public function delete()
        {
        }
    }
    /**
     * Image field class.
     *
     * Allows selecting and saving a media attachment file,
     * where the image ID is saved in the database.
     */
    class Image_Field extends \Carbon_Fields\Field\File_Field
    {
        public $field_type = 'image';
    }
    /**
     * Google Maps with Address field class.
     * Allows to manually select a pin, or to position a pin based on a specified address.
     * Coords (lat, lng), address and zoom are saved in the database.
     */
    class Map_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * {@inheritDoc}
         */
        protected $default_value = array(\Carbon_Fields\Value_Set\Value_Set::VALUE_PROPERTY => '40.346544,-101.645507', 'lat' => 40.346544, 'lng' => -101.645507, 'zoom' => 10, 'address' => '');
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * Enqueue scripts and styles in admin
         * Called once per field type
         */
        public static function admin_enqueue_scripts()
        {
        }
        /**
         * Convert lat and lng to a comma-separated list
         */
        protected function lat_lng_to_latlng($lat, $lng)
        {
        }
        /**
         * Load the field value from an input array based on its name
         *
         * @param  array $input Array of field names and values.
         * @return self  $this
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
        /**
         * Set the coords and zoom of this field.
         *
         * @param  string $lat  Latitude
         * @param  string $lng  Longitude
         * @param  int    $zoom Zoom level
         * @return $this
         */
        public function set_position($lat, $lng, $zoom)
        {
        }
    }
    /**
     * Set field class.
     *
     * Allows selecting multiple attachments and stores
     * their IDs in the Database.
     */
    class Media_Gallery_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * File type filter. Leave a blank string for any file type.
         * Available types: audio, video, image and all WordPress-recognized mime types
         *
         * @var string|array
         */
        protected $file_type = '';
        /**
         * What value to store
         *
         * @var string
         */
        protected $value_type = 'id';
        /**
         * Default field value
         *
         * @var array
         */
        protected $default_value = array();
        /**
         * Allow items to be added multiple times
         *
         * @var boolean
         */
        protected $duplicates_allowed = true;
        /**
         * Toggle the inline edit functionality
         *
         * @var boolean
         */
        protected $can_edit_inline = true;
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * Change the type of the field
         *
         * @param string $type
         * @return Media_Gallery_Field
         */
        public function set_type($type)
        {
        }
        /**
         * Get whether entry duplicates are allowed.
         *
         * @return boolean
         */
        public function get_duplicates_allowed()
        {
        }
        /**
         * Set whether entry duplicates are allowed.
         *
         * @param  boolean $allowed
         * @return self    $this
         */
        public function set_duplicates_allowed($allowed)
        {
        }
        /**
         * Set wether the edit functionality will open inline or in the media popup
         *
         * @param boolean $can_edit_inline
         * @return  self   $this
         */
        public function set_edit_inline($can_edit_inline)
        {
        }
        /**
         * Load the field value from an input array based on its name
         *
         * @param  array $input Array of field names and values.
         * @return self  $this
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * Converts the field values into a usable associative array.
         *
         * @access protected
         *
         * @return array
         */
        protected function value_to_json()
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * Multiselect field class.
     * Allows to create a select where multiple values can be selected.
     */
    class Multiselect_Field extends \Carbon_Fields\Field\Predefined_Options_Field
    {
        /**
         * Default field value
         *
         * @var array
         */
        protected $default_value = array();
        /**
         * Value delimiter
         *
         * @var string
         */
        protected $value_delimiter = '|';
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function to_json($load)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function get_formatted_value()
        {
        }
    }
    /**
     * Oembed field class.
     */
    class Oembed_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * Enqueue scripts and styles in admin
         * Called once per field type
         */
        public static function admin_enqueue_scripts()
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * Radio buttons field class.
     */
    class Radio_Field extends \Carbon_Fields\Field\Select_Field
    {
    }
    /**
     * Radio buttons field class.
     */
    class Radio_Image_Field extends \Carbon_Fields\Field\Select_Field
    {
    }
    /**
     * WYSIWYG rich text area field class.
     */
    class Rich_Text_Field extends \Carbon_Fields\Field\Textarea_Field
    {
        /**
         * All Rich Text Fields settings references.
         * Used to prevent duplicated wp_editor initialization with the same settings.
         *
         * @var array
         */
        protected static $settings_references = [];
        /**
         * WP Editor settings
         *
         * @link https://developer.wordpress.org/reference/classes/_wp_editors/parse_settings/
         * @var array
         */
        protected $settings = array('media_buttons' => true, 'tinymce' => array('resize' => true, 'wp_autoresize_on' => true));
        /**
         * MD5 Hash of the instance settings
         *
         * @var string
         */
        protected $settings_hash = null;
        /**
         * WP Editor settings reference
         *
         * @var string
         */
        protected $settings_reference;
        /**
         * Set the editor settings
         *
         * @param  array $settings
         * @return self  $this
         */
        public function set_settings($settings)
        {
        }
        /**
         * Calc the settings hash
         *
         * @return string
         */
        protected function calc_settings_hash()
        {
        }
        /**
         * Get the editor settings reference
         *
         * @return string
         */
        protected function get_settings_reference()
        {
        }
        /**
         * {@inheritDoc}
         */
        public function activate()
        {
        }
        /**
         * Display the editor.
         *
         * Instead of enqueueing all required scripts and stylesheets and setting up TinyMCE,
         * wp_editor() automatically enqueues and sets up everything.
         */
        public function editor_init()
        {
        }
        /**
         * Display Upload Image Button
         *
         */
        public function upload_image_button_html()
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param bool $load  Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * Separator field class.
     * Used for presentation purposes to create sections between fields.
     */
    class Separator_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * Load the field value.
         * Skipped, no value to be loaded.
         */
        public function load()
        {
        }
        /**
         * Save the field value.
         * Skipped, no value to be saved.
         */
        public function save()
        {
        }
        /**
         * Delete the field value.
         * Skipped, no value to be deleted.
         */
        public function delete()
        {
        }
        /**
         * Whether this field is required.
         * The Separator field is non-required by design.
         *
         * @return false
         */
        public function is_required()
        {
        }
    }
    /**
     * Set field class.
     * Allows to create a set of checkboxes where multiple can be selected.
     */
    class Set_Field extends \Carbon_Fields\Field\Predefined_Options_Field
    {
        /**
         * Default field value
         *
         * @var array
         */
        protected $default_value = array();
        /**
         * The options limit.
         *
         * @var int
         */
        protected $limit_options = 0;
        /**
         * Create a field from a certain type with the specified label.
         *
         * @param string $type  Field type
         * @param string $name  Field name
         * @param string $label Field label
         */
        public function __construct($type, $name, $label)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function set_value_from_input($input)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function to_json($load)
        {
        }
        /**
         * {@inheritDoc}
         */
        public function get_formatted_value()
        {
        }
        /**
         * Set the number of the options to be displayed at the initial field display.
         *
         * @param  int $limit
         */
        public function limit_options($limit)
        {
        }
    }
    class Sidebar_Field extends \Carbon_Fields\Field\Select_Field
    {
        /**
         * {@inheritDoc}
         */
        protected function load_options()
        {
        }
        /**
         * Disable adding new sidebars.
         *
         * @return self  $this
         */
        public function disable_add_new()
        {
        }
        /**
         * Specify sidebars to be excluded.
         *
         * @param  array $sidebars
         * @return self  $this
         */
        public function set_excluded_sidebars($sidebars)
        {
        }
        /**
         * Returns an array that holds the field data, suitable for JSON representation.
         *
         * @param  bool  $load Should the value be loaded from the database or use the value from the current instance.
         * @return array
         */
        public function to_json($load)
        {
        }
    }
    /**
     * Text field class.
     */
    class Text_Field extends \Carbon_Fields\Field\Field
    {
        /**
         * {@inheritDoc}
         */
        protected $allowed_attributes = array('list', 'max', 'maxLength', 'min', 'pattern', 'placeholder', 'readOnly', 'step', 'type', 'is', 'inputmode', 'autocomplete');
    }
}
namespace Carbon_Fields\Helper {
    /**
     * Color functions
     */
    class Color
    {
        /**
         * Converts a hexadecimal color into it's RGBA components
         * Accepts hex with and without alpha: #112233, #112233FF
         * Accepts hex with and without a leading # sign
         *
         * @param  string $hex
         * @return array
         */
        public static function hex_to_rgba($hex)
        {
        }
    }
    /**
     * Delimiter functions
     */
    class Delimiter
    {
        /**
         * Character to escape delimiters with
         * We're using an uncommon escape character as to not clash with stripslashes
         *
         * @var string
         */
        protected static $escape_character = '!';
        /**
         * Quote a delimiter in the passed value
         *
         * @param  string $value
         * @param  string $delimiter
         * @return string
         */
        public static function quote($value, $delimiter)
        {
        }
        /**
         * Unquote a delimiter in the passed value
         *
         * @param  string $value
         * @param  string $delimiter
         * @return string
         */
        public static function unquote($value, $delimiter)
        {
        }
        /**
         * Split the passed value by a delimiter
         *
         * @param  string $value
         * @param  string $delimiter
         * @return array
         */
        public static function split($value, $delimiter)
        {
        }
    }
    /**
     * Helper functions and main initialization class.
     */
    class Helper
    {
        /**
         * Get a field from a specific container type or id
         *
         * @param  string  $container_type Container type to search in. Optional if $container_id is supplied
         * @param  string  $container_id   Container id to search in. Optional if $container_type is supplied
         * @param  string  $field_name     Field name to search for
         * @return \Carbon_Fields\Field\Field
         */
        public static function get_field($container_type, $container_id, $field_name)
        {
        }
        /**
         * Get a clone of a field with a value loaded.
         * WARNING: The datastore is cloned!
         *
         * @param  int    $object_id      Object id to get value for (e.g. post_id, term_id etc.)
         * @param  string $container_type Container type to search in. Optional if $container_id is supplied
         * @param  string $container_id   Container id to search in. Optional if $container_type is supplied
         * @param  string $field_name     Field name to search for
         * @return \Carbon_Fields\Field\Field
         */
        public static function get_field_clone($object_id, $container_type, $container_id, $field_name)
        {
        }
        /**
         * Execute an action with a clone of a field with a value loaded.
         * WARNING: The datastore reference is kept!
         *
         * @param  int      $object_id      Object id to get value for (e.g. post_id, term_id etc.)
         * @param  string   $container_type Container type to search in. Optional if $container_id is supplied
         * @param  string   $container_id   Container id to search in. Optional if $container_type is supplied
         * @param  string   $field_name     Field name to search for
         * @param  \Closure $action         Action to execute
         * @return void|mixed
         */
        public static function with_field_clone($object_id, $container_type, $container_id, $field_name, $action)
        {
        }
        /**
         * Get a value formatted for end-users
         *
         * @param  int    $object_id      Object id to get value for (e.g. post_id, term_id etc.)
         * @param  string $container_type Container type to search in
         * @param  string $container_id
         * @param  string $field_name     Field name
         * @return mixed
         */
        public static function get_value($object_id, $container_type, $container_id, $field_name)
        {
        }
        /**
         * Set value for a field
         *
         * @param  int    $object_id      Object id to get value for (e.g. post_id, term_id etc.)
         * @param  string $container_type Container type to search in
         * @param  string $container_id
         * @param  string $field_name     Field name
         * @param  array  $value          Field expects a `value_set`. Complex_Field expects a `value_tree` - refer to DEVELOPMENT.md
         * @return void
         */
        public static function set_value($object_id, $container_type, $container_id, $field_name, $value)
        {
        }
        /**
         * Shorthand for get_post_meta().
         * Uses the ID of the current post in the loop.
         *
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_the_post_meta($name, $container_id = '')
        {
        }
        /**
         * Get post meta field for a post.
         *
         * @param  int    $id           Post ID
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_post_meta($id, $name, $container_id = '')
        {
        }
        /**
         * Set post meta field for a post.
         *
         * @param  int    $id           Post ID
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_post_meta($id, $name, $value, $container_id = '')
        {
        }
        /**
         * Get theme option field value.
         *
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_theme_option($name, $container_id = '')
        {
        }
        /**
         * Set theme option field value.
         *
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_theme_option($name, $value, $container_id = '')
        {
        }
        /**
         * Get network option field value for the main site.
         *
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_the_network_option($name, $container_id = '')
        {
        }
        /**
         * Get network option field value for a site.
         *
         * @param  string $id           Site ID
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_network_option($id, $name, $container_id = '')
        {
        }
        /**
         * Set network option field value for a site.
         *
         * @param  string $id           Site ID
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_network_option($id, $name, $value, $container_id = '')
        {
        }
        /**
         * Get term meta field for a term.
         *
         * @param  int    $id           Term ID
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_term_meta($id, $name, $container_id = '')
        {
        }
        /**
         * Set term meta field for a term.
         *
         * @param  int    $id           Term ID
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_term_meta($id, $name, $value, $container_id = '')
        {
        }
        /**
         * Get user meta field for a user.
         *
         * @param  int    $id           User ID
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_user_meta($id, $name, $container_id = '')
        {
        }
        /**
         * Set user meta field for a user.
         *
         * @param  int    $id           User ID
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_user_meta($id, $name, $value, $container_id = '')
        {
        }
        /**
         * Get comment meta field for a comment.
         *
         * @param  int    $id           Comment ID
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_comment_meta($id, $name, $container_id = '')
        {
        }
        /**
         * Set comment meta field for a comment.
         *
         * @param  int    $id           Comment ID
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_comment_meta($id, $name, $value, $container_id = '')
        {
        }
        /**
         * Get nav menu item meta field for a nav menu item.
         *
         * @param  int    $id           Nav menu item ID
         * @param  string $name         Field name
         * @param  string $container_id
         * @return mixed
         */
        public static function get_nav_menu_item_meta($id, $name, $container_id = '')
        {
        }
        /**
         * Set nav menu item meta field for a nav menu item.
         *
         * @param  int    $id           Nav menu item ID
         * @param  string $name         Field name
         * @param  array  $value
         * @param  string $container_id
         */
        public static function set_nav_menu_item_meta($id, $name, $value, $container_id = '')
        {
        }
        /**
         * Recursive sorting function by array key.
         *
         * @param  array   &$array     The input array.
         * @param  int     $sort_flags Flags for controlling sorting behavior.
         * @return boolean
         */
        public static function ksort_recursive(&$array, $sort_flags = SORT_REGULAR)
        {
        }
        /**
         * Get the relation type from an array similar to how meta_query works in WP_Query
         *
         * @param  array         $array
         * @param  array<string> $allowed_relations
         * @param  string        $relation_key
         * @return string
         */
        public static function get_relation_type_from_array($array, $allowed_relations = array('AND', 'OR'), $relation_key = 'relation')
        {
        }
        /**
         * Normalize a label by updating case, stripping common prefixes etc.
         *
         * @param  string $label
         * @return string
         */
        public static function normalize_label($label)
        {
        }
        /**
         * Normalize a type string representing an object type
         *
         * @param  string $type
         * @return string
         */
        public static function normalize_type($type)
        {
        }
        /**
         * Convert a string representing an object type to a fully qualified class name
         *
         * @param  string $type
         * @param  string $namespace
         * @param  string $class_suffix
         * @return string
         */
        public static function type_to_class($type, $namespace = '', $class_suffix = '')
        {
        }
        /**
         * Convert a string representing an object type to a fully qualified class name
         *
         * @param  string $class
         * @param  string $class_suffix
         * @return string
         */
        public static function class_to_type($class, $class_suffix = '')
        {
        }
        /**
         * Get an array of sanitized html classes
         *
         * @param  string|array<string> $classes
         * @return array<string>
         */
        public static function sanitize_classes($classes)
        {
        }
        /**
         * Check if an id or name for containers and fields is valid
         *
         * @param  string  $id
         * @return boolean
         */
        public static function is_valid_entity_id($id)
        {
        }
        /**
         * Return a partial regex pettern matching allowed field name characters
         *
         * @return string
         */
        public static function get_field_name_characters_pattern()
        {
        }
        /**
         * Get an attachment ID given a file URL
         * Modified version of https://wpscholar.com/blog/get-attachment-id-from-wp-image-url/
         *
         * @static
         * @access public
         *
         * @param  string  $url
         * @return integer
         */
        public static function get_attachment_id($url)
        {
        }
        /**
         * Returns attachment metadata from an ID.
         *
         * @static
         * @access public
         *
         * @param  string  $id
         * @param  string  $type Value Type. Can be either id or url.
         * @return array
         */
        public static function get_attachment_metadata($id, $type)
        {
        }
        /**
         * Get the current $_POST or $_GET input array with compacted input values merged in
         *
         * @return array
         */
        public static function input()
        {
        }
        /**
         * Get a copy of the passed array with compacted input values merged in
         *
         * @param  array $input
         * @return array
         */
        public static function expand_compacted_input($input)
        {
        }
        /**
         * Get valid input from an input array compared to predefined options
         *
         * @param  array $input
         * @param  array $options
         * @return array
         */
        public static function get_valid_options($input, $options)
        {
        }
        /**
         * Get an array of active sidebars
         *
         * @return array
         */
        public static function get_active_sidebars()
        {
        }
        public static function get_attachments_urls($media_files)
        {
        }
    }
}
namespace Carbon_Fields\Libraries\Sidebar_Manager {
    /**
     * This class is responsible for handling custom sidebars.
     */
    class Sidebar_Manager
    {
        /**
         * Register actions, filters, etc...
         */
        public function boot()
        {
        }
        /**
         * Handle action requests.
         */
        public function action_handler()
        {
        }
        /**
         * Execute an action
         *
         * @param string $action
         * @param array $input
         * @return mixed
         */
        public function execute_action($action, $input)
        {
        }
        /**
         * Add a new custom sidebar.
         *
         * @see Sidebar_Manager::register_sidebars()
         * @param string $id Sidebar ID
         * @param string $name Sidebar Name
         * @return array|\WP_Error
         */
        public function add_sidebar($name, $id = '')
        {
        }
        /**
         * Remove a custom sidebar by ID.
         *
         * @see Sidebar_Manager::register_sidebars()
         * @param string $id Sidebar ID
         * @return bool|\WP_Error
         */
        public function remove_sidebar($id)
        {
        }
        /**
         * Get all the registered custom sidebars.
         *
         * @return array
         */
        public function get_sidebars()
        {
        }
        /**
         * Register the custom sidebars.
         */
        public function register_sidebars()
        {
        }
        /**
         * Enqueue the UI scripts.
         */
        public function enqueue_scripts()
        {
        }
    }
}
namespace Carbon_Fields\Loader {
    /**
     * Loader and main initialization
     */
    class Loader
    {
        protected $sidebar_manager;
        protected $container_repository;
        public function __construct(\Carbon_Fields\Libraries\Sidebar_Manager\Sidebar_Manager $sidebar_manager, \Carbon_Fields\Container\Repository $container_repository)
        {
        }
        /**
         * Hook the main Carbon Fields initialization functionality.
         */
        public function boot()
        {
        }
        /**
         * Load the plugin textdomain.
         */
        public function load_textdomain()
        {
        }
        /**
         * Load the ui textdomain
         */
        public function get_ui_translations()
        {
        }
        /**
         * Register containers and fields.
         */
        public function trigger_fields_register()
        {
        }
        /**
         * Initialize containers.
         */
        public function initialize_containers()
        {
        }
        /**
         * Initialize the media browser.
         */
        public function enqueue_media_browser()
        {
        }
        /**
         * Returns the rendering context for the assets.
         *
         * @return string
         */
        protected function get_assets_context()
        {
        }
        /**
         * Returns the suffix that should be applied to the assets.
         *
         * @return string
         */
        protected function get_assets_suffix()
        {
        }
        /**
         * Registers and enqueues a style.
         *
         * @param  string $src
         * @param  array  $deps
         * @return void
         */
        protected function enqueue_style($src, $deps = array())
        {
        }
        /**
         * Registers and enqueues a script.
         *
         * @param  string $src
         * @param  array  $deps
         * @return void
         */
        protected function enqueue_script($src, $deps = array())
        {
        }
        /**
         * Enqueues the assets.
         *
         * @return void
         */
        public function enqueue_assets()
        {
        }
        /**
         * Trigger the initialization of the UI.
         *
         * @return void
         */
        public function initialize_ui()
        {
        }
        /**
         * Add custom meta box contexts
         */
        public function add_carbon_fields_meta_box_contexts()
        {
        }
        /**
         * Retrieve containers and sidebars for use in the JS.
         *
         * @return array $carbon_data
         */
        public function get_json_data()
        {
        }
        /**
         * Register widget containers for REST API
         * in order to be able to interract with the containers
         *
         * @access public
         * @return void
         */
        public function initialize_widgets()
        {
        }
        /**
         * Handle association field options fetch.
         *
         * @access public
         *
         * @return array
         */
        public function fetch_association_options()
        {
        }
    }
}
namespace Carbon_Fields\Pimple {
    /**
     * Container main class.
     *
     * @author Fabien Potencier
     */
    class Container implements \ArrayAccess
    {
        /**
         * Instantiates the container.
         *
         * Objects and parameters can be passed as argument to the constructor.
         *
         * @param array $values The parameters or objects
         */
        public function __construct(array $values = [])
        {
        }
        /**
         * Sets a parameter or an object.
         *
         * Objects must be defined as Closures.
         *
         * Allowing any PHP callable leads to difficult to debug problems
         * as function names (strings) are callable (creating a function with
         * the same name as an existing parameter would break your container).
         *
         * @param string $id    The unique identifier for the parameter or object
         * @param mixed  $value The value of the parameter or a closure to define an object
         *
         * @return void
         *
         * @throws FrozenServiceException Prevent override of a frozen service
         */
        #[\ReturnTypeWillChange]
        public function offsetSet($id, $value)
        {
        }
        /**
         * Gets a parameter or an object.
         *
         * @param string $id The unique identifier for the parameter or object
         *
         * @return mixed The value of the parameter or an object
         *
         * @throws UnknownIdentifierException If the identifier is not defined
         */
        #[\ReturnTypeWillChange]
        public function offsetGet($id)
        {
        }
        /**
         * Checks if a parameter or an object is set.
         *
         * @param string $id The unique identifier for the parameter or object
         *
         * @return bool
         */
        #[\ReturnTypeWillChange]
        public function offsetExists($id)
        {
        }
        /**
         * Unsets a parameter or an object.
         *
         * @param string $id The unique identifier for the parameter or object
         *
         * @return void
         */
        #[\ReturnTypeWillChange]
        public function offsetUnset($id)
        {
        }
        /**
         * Marks a callable as being a factory service.
         *
         * @param callable $callable A service definition to be used as a factory
         *
         * @return callable The passed callable
         *
         * @throws ExpectedInvokableException Service definition has to be a closure or an invokable object
         */
        public function factory($callable)
        {
        }
        /**
         * Protects a callable from being interpreted as a service.
         *
         * This is useful when you want to store a callable as a parameter.
         *
         * @param callable $callable A callable to protect from being evaluated
         *
         * @return callable The passed callable
         *
         * @throws ExpectedInvokableException Service definition has to be a closure or an invokable object
         */
        public function protect($callable)
        {
        }
        /**
         * Gets a parameter or the closure defining an object.
         *
         * @param string $id The unique identifier for the parameter or object
         *
         * @return mixed The value of the parameter or the closure defining an object
         *
         * @throws UnknownIdentifierException If the identifier is not defined
         */
        public function raw($id)
        {
        }
        /**
         * Extends an object definition.
         *
         * Useful when you want to extend an existing object definition,
         * without necessarily loading that object.
         *
         * @param string   $id       The unique identifier for the object
         * @param callable $callable A service definition to extend the original
         *
         * @return callable The wrapped callable
         *
         * @throws UnknownIdentifierException        If the identifier is not defined
         * @throws FrozenServiceException            If the service is frozen
         * @throws InvalidServiceIdentifierException If the identifier belongs to a parameter
         * @throws ExpectedInvokableException        If the extension callable is not a closure or an invokable object
         */
        public function extend($id, $callable)
        {
        }
        /**
         * Returns all defined value names.
         *
         * @return array An array of value names
         */
        public function keys()
        {
        }
        /**
         * Registers a service provider.
         *
         * @param array $values An array of values that customizes the provider
         *
         * @return static
         */
        public function register(\Carbon_Fields\Pimple\ServiceProviderInterface $provider, array $values = [])
        {
        }
    }
}
namespace Carbon_Fields\Pimple\Exception {
    /**
     * A closure or invokable object was expected.
     *
     * @author Pascal Luna <skalpa@zetareticuli.org>
     */
    class ExpectedInvokableException extends \InvalidArgumentException implements \Psr\Container\ContainerExceptionInterface
    {
    }
    /**
     * An attempt to modify a frozen service was made.
     *
     * @author Pascal Luna <skalpa@zetareticuli.org>
     */
    class FrozenServiceException extends \RuntimeException implements \Psr\Container\ContainerExceptionInterface
    {
        /**
         * @param string $id Identifier of the frozen service
         */
        public function __construct($id)
        {
        }
    }
    /**
     * An attempt to perform an operation that requires a service identifier was made.
     *
     * @author Pascal Luna <skalpa@zetareticuli.org>
     */
    class InvalidServiceIdentifierException extends \InvalidArgumentException implements \Psr\Container\NotFoundExceptionInterface
    {
        /**
         * @param string $id The invalid identifier
         */
        public function __construct($id)
        {
        }
    }
    /**
     * The identifier of a valid service or parameter was expected.
     *
     * @author Pascal Luna <skalpa@zetareticuli.org>
     */
    class UnknownIdentifierException extends \InvalidArgumentException implements \Psr\Container\NotFoundExceptionInterface
    {
        /**
         * @param string $id The unknown identifier
         */
        public function __construct($id)
        {
        }
    }
}
namespace Carbon_Fields\Pimple {
    /**
     * Lazy service iterator.
     *
     * @author Pascal Luna <skalpa@zetareticuli.org>
     */
    final class ServiceIterator implements \Iterator
    {
        public function __construct(\Carbon_Fields\Pimple\Container $container, array $ids)
        {
        }
        /**
         * @return void
         */
        #[\ReturnTypeWillChange]
        public function rewind()
        {
        }
        /**
         * @return mixed
         */
        #[\ReturnTypeWillChange]
        public function current()
        {
        }
        /**
         * @return mixed
         */
        #[\ReturnTypeWillChange]
        public function key()
        {
        }
        /**
         * @return void
         */
        #[\ReturnTypeWillChange]
        public function next()
        {
        }
        /**
         * @return bool
         */
        #[\ReturnTypeWillChange]
        public function valid()
        {
        }
    }
    /**
     * Pimple service provider interface.
     *
     * @author  Fabien Potencier
     * @author  Dominik Zogg
     */
    interface ServiceProviderInterface
    {
        /**
         * Registers services on the given container.
         *
         * This method should only be used to configure services and parameters.
         * It should not get services.
         */
        public function register(\Carbon_Fields\Pimple\Container $pimple);
    }
}
namespace Carbon_Fields\Provider {
    class Container_Condition_Provider implements \Carbon_Fields\Pimple\ServiceProviderInterface
    {
        /**
         * Install dependencies in IoC container
         *
         * @param  PimpleContainer $ioc
         */
        public function register(\Carbon_Fields\Pimple\Container $ioc)
        {
        }
        /**
         * Install all codition types and the condition factory
         *
         * @param  PimpleContainer $ioc
         */
        protected function install_conditions($ioc)
        {
        }
        /**
         * Install all condition comparers
         *
         * @param  PimpleContainer $ioc
         */
        protected function install_comparers($ioc)
        {
        }
        /**
         * Install all codition translators
         *
         * @param  PimpleContainer $ioc
         */
        protected static function install_translators($ioc)
        {
        }
        /**
         * Install all container coditions
         *
         * @param  PimpleContainer $ioc
         */
        protected function install_container_conditions($ioc)
        {
        }
        /**
         * Filter the Post_Meta_Container static condition types
         *
         * @param  array<string>                     $condition_types
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_post_meta_container_static_condition_types($condition_types, $container_type, $container)
        {
        }
        /**
         * Filter the Post_Meta_Container dynamic condition types
         *
         * @param  array<string>                      $condition_types
         * @param  string                             $container_type
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_post_meta_container_dynamic_condition_types($condition_types, $container_type, $container)
        {
        }
        /**
         * Filter the Term_Meta_Container static condition types
         *
         * @param  array<string>                      $condition_types
         * @param  string                             $container_type
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_term_meta_container_static_condition_types($condition_types, $container_type, $container)
        {
        }
        /**
         * Filter the Term_Meta_Container dynamic condition types
         *
         * @param  array<string>                      $condition_types
         * @param  string                             $container_type
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_term_meta_container_dynamic_condition_types($condition_types, $container_type, $container)
        {
        }
        /**
         * Filter the User_Meta_Container static condition types
         *
         * @param  array<string>                      $condition_types
         * @param  string                             $container_type
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_user_meta_container_static_condition_types($condition_types, $container_type, $container)
        {
        }
        /**
         * Filter the User_Meta_Container dynamic condition types
         *
         * @param  array<string>                      $condition_types
         * @param  string                             $container_type
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_user_meta_container_dynamic_condition_types($condition_types, $container_type, $container)
        {
        }
        /**
         * Filter the Theme_Options_Container static condition types
         *
         * @param  array<string>                      $condition_types
         * @param  string                             $container_type
         * @param  \Carbon_Fields\Container\Container $container
         * @return array<string>
         */
        public function filter_theme_options_container_static_condition_types($condition_types, $container_type, $container)
        {
        }
    }
}
namespace Carbon_Fields\REST_API {
    /**
     * Decorate default REST routes with extra information provided by Carbon Fields
     */
    class Decorator
    {
        /**
         * ContainerRepository instance
         *
         * @var ContainerRepository
         */
        protected $container_repository;
        /**
         * @param ContainerRepository $container_repository
         */
        public function __construct(\Carbon_Fields\Container\Repository $container_repository)
        {
        }
        /**
         * Boot up functionality
         */
        public function boot()
        {
        }
        /**
         * Register Carbon Fields using the register_rest_field() function
         */
        public function register_fields()
        {
        }
        /**
         * Get Post Meta Container visibility settings
         *
         * @param \Carbon_Fields\Container\Post_Meta_Container $container
         * @return array
         */
        public static function get_post_meta_container_settings($container)
        {
        }
        /**
         * Get Term Meta Container visibility settings
         *
         * @param \Carbon_Fields\Container\Term_Meta_Container $container
         * @return array
         */
        public static function get_term_meta_container_settings($container)
        {
        }
        /**
         * Get User Meta Container visibility settings
         *
         * @param \Carbon_Fields\Container\User_Meta_Container $container
         * @return string
         */
        public static function get_user_meta_container_settings($container)
        {
        }
        /**
         * Get Comment Meta Container visibility settings
         *
         * @param \Carbon_Fields\Container\Comment_Meta_Container $container
         * @return string
         */
        public static function get_comment_meta_container_settings($container)
        {
        }
        /**
         * Retrieve ID from object based on $context
         *
         * @param object $object
         * @param string $container_type
         * @return null|int
         */
        public static function get_object_id($object, $container_type)
        {
        }
    }
    /**
    * Register custom routes for REST API
    */
    class Router
    {
        /**
         * Carbon Fields routes
         *
         * @var array
         */
        protected $routes = array('post_meta' => array('path' => '/posts/(?P<id>\d+)', 'callback' => 'get_post_meta', 'permission_callback' => 'allow_access', 'methods' => 'GET'), 'term_meta' => array('path' => '/terms/(?P<id>\d+)', 'callback' => 'get_term_meta', 'permission_callback' => 'allow_access', 'methods' => 'GET'), 'user_meta' => array('path' => '/users/(?P<id>\d+)', 'callback' => 'get_user_meta', 'permission_callback' => 'allow_access', 'methods' => 'GET'), 'comment_meta' => array('path' => '/comments/(?P<id>\d+)', 'callback' => 'get_comment_meta', 'permission_callback' => 'allow_access', 'methods' => 'GET'), 'theme_options' => array('path' => '/options/', 'callback' => 'options_accessor', 'permission_callback' => 'options_permission', 'methods' => array('GET', 'POST')), 'association_data' => array('path' => '/association', 'callback' => 'get_association_data', 'permission_callback' => 'allow_access', 'methods' => 'GET'), 'association_options' => array('path' => '/association/options', 'callback' => 'get_association_options', 'permission_callback' => 'allow_access', 'methods' => 'GET'), 'attachment_data' => array('path' => '/attachment', 'callback' => 'get_attachment_data', 'permission_callback' => 'allow_access', 'methods' => 'GET', 'args' => 'attachment_data_args_schema'), 'block_renderer' => array('path' => '/block-renderer', 'callback' => 'block_renderer', 'permission_callback' => 'block_renderer_permission', 'methods' => 'POST', 'args' => 'block_renderer_args_schema'));
        /**
         * Version of the API
         *
         * @see set_version()
         * @see get_version()
         * @var string
         */
        protected $version = '1';
        /**
         * Vendor slug for the API
         *
         * @see set_vendor()
         * @see get_vendor()
         * @var string
         */
        protected $vendor = 'carbon-fields';
        /**
         * ContainerRepository instance
         *
         * @var ContainerRepository
         */
        protected $container_repository;
        /**
         * @param ContainerRepository $container_repository
         */
        public function __construct(\Carbon_Fields\Container\Repository $container_repository)
        {
        }
        /**
         * Boot up functionality
         */
        public function boot()
        {
        }
        /**
         * Set routes
         *
         * @param array $routes
         */
        public function set_routes($routes)
        {
        }
        /**
         * Return routes
         *
         * @return array
         */
        public function get_routes()
        {
        }
        /**
         * Set version
         *
         * @param string $version
         */
        public function set_version($version)
        {
        }
        /**
         * Return version
         *
         * @return string
         */
        public function get_version()
        {
        }
        /**
         * Set vendor
         *
         * @param string $vendor
         */
        public function set_vendor($vendor)
        {
        }
        /**
         * Return vendor
         *
         * @return string
         */
        public function get_vendor()
        {
        }
        /**
         * Allow access to an endpoint
         *
         * @return bool
         */
        public function allow_access()
        {
        }
        /**
         * Register custom routes
         *
         * @see  register_route()
         */
        public function register_routes()
        {
        }
        /**
         * Register a custom REST route
         *
         * @param  array $route
         */
        protected function register_route($route)
        {
        }
        /**
         * Proxy method for handling get/set for theme options
         *
         * @param  \WP_REST_Request $request
         * @return array|\WP_REST_Response
         */
        public function options_accessor($request)
        {
        }
        /**
         * Proxy method for handling theme options permissions
         *
         * @param  \WP_REST_Request $request
         * @return bool
         */
        public function options_permission($request)
        {
        }
        /**
         * Wrapper method used for retrieving data from Data_Manager
         *
         * @param  string $container_type
         * @param  string $object_id
         * @return array
         */
        protected function get_all_field_values($container_type, $object_id = null)
        {
        }
        /**
         * Get Carbon Fields post meta values
         *
         * @param  array $data
         * @return array
         */
        public function get_post_meta($data)
        {
        }
        /**
         * Get Carbon Fields user meta values
         *
         * @param  array $data
         * @return array
         */
        public function get_user_meta($data)
        {
        }
        /**
         * Get Carbon Fields term meta values
         *
         * @param  array $data
         * @return array
         */
        public function get_term_meta($data)
        {
        }
        /**
         * Get Carbon Fields comment meta values
         *
         * @param  array $data
         * @return array
         */
        public function get_comment_meta($data)
        {
        }
        /**
         * Get Carbon Fields association selected options.
         *
         * @access public
         *
         * @return array
         */
        public function get_association_data()
        {
        }
        /**
         * Get Carbon Fields association options data.
         *
         * @access public
         *
         * @return array
         */
        public function get_association_options()
        {
        }
        /**
         * Get attachment data by given ID or URL.
         *
         * @return array
         */
        public function get_attachment_data()
        {
        }
        /**
         * Retrieve Carbon theme options
         *
         * @return array
         */
        protected function get_options()
        {
        }
        /**
         * Set Carbon theme options
         *
         * @param \WP_REST_Request $request Full data about the request.
         * @return \WP_Error|\WP_REST_Response
         */
        protected function set_options($request)
        {
        }
        /**
         * Checks if a given request has access to read blocks.
         *
         * @see https://github.com/WordPress/WordPress/blob/master/wp-includes/rest-api/endpoints/class-wp-rest-block-renderer-controller.php#L78-L116
         *
         * @param  \WP_REST_Request
         * @return true|\WP_Error
         */
        public function block_renderer_permission($request)
        {
        }
        /**
         * Returns the schema of the accepted arguments.
         *
         * @return array
         */
        public function attachment_data_args_schema()
        {
        }
        /**
         * Returns the schema of the accepted arguments.
         *
         * @see https://github.com/WordPress/WordPress/blob/master/wp-includes/rest-api/endpoints/class-wp-rest-block-renderer-controller.php#L56-L71
         *
         * @return array
         */
        public function block_renderer_args_schema()
        {
        }
        /**
         * Returns block output from block's registered render_callback.
         *
         * @see https://github.com/WordPress/WordPress/blob/master/wp-includes/rest-api/endpoints/class-wp-rest-block-renderer-controller.php#L118-L154
         *
         * @param  \WP_REST_Request $request
         * @return \WP_REST_Response|\WP_Error
         */
        public function block_renderer($request)
        {
        }
    }
}
namespace Carbon_Fields\Service {
    abstract class Service
    {
        /**
         * Service enabled state
         *
         * @var boolean
         */
        protected $enabled = false;
        /**
         * Check whether the service is enabled
         */
        public function is_enabled()
        {
        }
        /**
         * Enable the service
         *
         * @return bool
         */
        public function enable()
        {
        }
        /**
         * Enable actions for inheriting classes
         */
        abstract protected function enabled();
        /**
         * Disable the service
         *
         * @return bool
         */
        public function disable()
        {
        }
        /**
         * Disable actions for inheriting classes
         */
        abstract protected function disabled();
    }
    /*
     * Service which provides the ability to do meta queries for multi-value fields and nested fields
     */
    class Legacy_Storage_Service_v_1_5 extends \Carbon_Fields\Service\Service
    {
        /**
         * Contaier repository to fetch fields from
         *
         * @var ContainerRepository
         */
        protected $container_repository;
        /**
         * Key Toolset for key generation and comparison utilities
         *
         * @var Key_Toolset
         */
        protected $key_toolset;
        /**
         * List of special key suffixes that the Map field uses so save extra data
         *
         * @var array
         */
        protected $map_keys = array('lat', 'lng', 'zoom', 'address');
        /**
         * Cache of converted storage arrays
         *
         * @var array
         */
        protected $storage_array_cache = array();
        /**
         * Service constructor
         *
         * @param ContainerRepository $container_repository
         * @param Key_Toolset         $key_toolset
         */
        public function __construct(\Carbon_Fields\Container\Repository $container_repository, \Carbon_Fields\Toolset\Key_Toolset $key_toolset)
        {
        }
        /**
         * Enable the service
         */
        protected function enabled()
        {
        }
        /**
         * Disable the service
         */
        protected function disabled()
        {
        }
        /**
         * Check if a key is a legacy map property key
         *
         * @param string $key
         * @return bool
         */
        protected function is_legacy_map_key($key)
        {
        }
        /**
         * Return container instance which uses the passed datastore
         *
         * @param  Datastore_Interface $datastore
         * @return Container
         */
        protected function get_container_for_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore)
        {
        }
        /**
         * Get a nested array of field_group permutations suitable for old key parsing
         *
         * @param  array $fields
         * @return array
         */
        protected function get_field_group_permutations($fields)
        {
        }
        /**
         * Get array of database table details for datastore
         *
         * @param Datastore_Interface $datastore
         * @return array
         */
        protected function get_table_details_for_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore)
        {
        }
        /**
         * Get array of sql comparisons for field
         *
         * @param  Field  $field
         * @param  string $key_prefix
         * @param  string $key_column
         * @return array<string>
         */
        protected function get_legacy_sql_comparisons_for_field(\Carbon_Fields\Field\Field $field, $key_prefix, $key_column)
        {
        }
        /**
         * Get a key-value array of legacy values for fields in the container of the passed datastore
         *
         * @param  Container           $container
         * @param  Datastore_Interface $datastore
         * @return array
         */
        protected function get_legacy_storage_array_from_database(\Carbon_Fields\Container\Container $container, \Carbon_Fields\Datastore\Datastore_Interface $datastore)
        {
        }
        /**
         * Get a key-value array of CF 1.5 values for fields in the container of the passed datastore
         *
         * @param  Datastore_Interface $datastore
         * @return array
         */
        public function get_legacy_storage_array(\Carbon_Fields\Datastore\Datastore_Interface $datastore)
        {
        }
        /**
         * Get expanded value for key from legacy storage array
         *
         * @param string $key Legacy key to fetch additional values for
         * @param array $legacy_storage_array key=>value array of legacy data
         * @return mixed
         */
        protected function get_value_for_legacy_key($key, $legacy_storage_array)
        {
        }
        /**
         * Convert legacy storage rows to array of row descriptors
         *
         * @param array $legacy_storage_array
         * @param array $field_group_permutations
         * @return array
         */
        protected function legacy_storage_rows_to_row_descriptors($legacy_storage_array, $field_group_permutations)
        {
        }
        /**
         * Get key segmentation regex for a field name
         *
         * @param  string $field_name
         * @param  string $group_name
         * @return string
         */
        protected function get_key_segmentation_regex_for_field_name($field_name, $group_name = '')
        {
        }
        /**
         * Convert legacy storage row to row descriptor
         *
         * @param  string $key
         * @param  string $value
         * @param  array $field_group_permutations
         * @return array
         */
        protected function legacy_storage_row_to_row_descriptor($key, $value, $field_group_permutations)
        {
        }
        /**
         * Convert row descriptor to array of new storage key-values
         *
         * @param  array $row_descriptor
         * @return array
         */
        protected function row_descriptor_to_storage_array($row_descriptor)
        {
        }
        /**
         * Get all data saved for a datastore in the new key-value format
         *
         * @param  Datastore_Interface $datastore
         * @return array
         */
        public function get_storage_array_for_datastore(\Carbon_Fields\Datastore\Datastore_Interface $datastore)
        {
        }
        /**
         * Get array of new storage key-values matching key patterns
         *
         * @param  Datastore_Interface $datastore
         * @param  array $storage_key_patterns
         * @return array
         */
        public function get_storage_array(\Carbon_Fields\Datastore\Datastore_Interface $datastore, $storage_key_patterns)
        {
        }
        public function filter_storage_array($storage_array, $datastore, $storage_key_patterns)
        {
        }
    }
    /*
     * Service which provides the ability to do meta queries for multi-value fields and nested fields
     */
    class Meta_Query_Service extends \Carbon_Fields\Service\Service
    {
        /**
         * Prefix to hook for when replacing "meta_key = " with "meta_key LIKE " in post queries
         */
        const META_KEY_PREFIX = 'carbon_fields:';
        /**
         * Container repository to get field references from
         *
         * @var ContainerRepository
         */
        protected $container_repository;
        /**
         * Key Toolset for key generation and comparison utilities
         *
         * @var Key_Toolset
         */
        protected $key_toolset;
        public function __construct(\Carbon_Fields\Container\Repository $container_repository, \Carbon_Fields\Toolset\Key_Toolset $key_toolset)
        {
        }
        /**
         * Enable meta query filtering
         */
        protected function enabled()
        {
        }
        /**
         * Disable meta query filtering
         */
        protected function disabled()
        {
        }
        /**
         * Recursive function to replace meta keys in meta_query arrays
         *
         * @param $condition
         * @param $container_type
         *
         * @return array
         */
        protected function filter_meta_query_array($condition, $container_type)
        {
        }
        protected function get_meta_key_replace_regex()
        {
        }
        public function filter_get_meta_sql($sql)
        {
        }
        /**************************************************
         * WP_QUERY                                       *
         **************************************************/
        /**
         * Hook to pre_get_posts to filter the meta_query array
         *
         * @param \WP_Query $query
         */
        public function hook_pre_get_posts($query)
        {
        }
        /**************************************************
         * WP_TERM_QUERY                                  *
         **************************************************/
        /**
         * Hook to pre_get_terms to filter the meta_query array
         *
         * @param \WP_Query $query
         */
        public function hook_pre_get_terms($query)
        {
        }
        /**************************************************
         * WP_USER_QUERY                                  *
         **************************************************/
        /**
         * Hook to pre_get_users to filter the meta_query array
         *
         * @param \WP_Query $query
         */
        public function hook_pre_get_users($query)
        {
        }
    }
    /*
     * Service which provides the ability to do meta queries for multi-value fields and nested fields
     */
    class REST_API_Service extends \Carbon_Fields\Service\Service
    {
        /**
         * Router instance
         *
         * @var Router
         */
        protected $router;
        /**
         * Decorator instance
         *
         * @var Decorator
         */
        protected $decorator;
        /**
         * @param Router    $router
         * @param Decorator $decorator
         */
        public function __construct(\Carbon_Fields\REST_API\Router $router, \Carbon_Fields\REST_API\Decorator $decorator)
        {
        }
        /**
         * Enable REST API integration
         */
        protected function enabled()
        {
        }
        /**
         * Disable REST API integration
         */
        protected function disabled()
        {
        }
        /**
         * Bootstrap all functionality
         */
        public function boot()
        {
        }
    }
    class Revisions_Service extends \Carbon_Fields\Service\Service
    {
        const CHANGE_KEY = 'carbon_fields_changed';
        protected function enabled()
        {
        }
        protected function disabled()
        {
        }
        public function check_for_changes($return, $last_revision, $post)
        {
        }
        public function update_post_id_on_preview($id, $name, $container_id)
        {
        }
        /**
         * @param int $post_id
         * @param \Carbon_Fields\Container\Post_Meta_Container $container
         */
        public function maybe_copy_meta_to_revision($post_id, $container)
        {
        }
        public function maybe_save_revision($fields, $post = null)
        {
        }
        public function add_fields_to_revision($fields, $post = null)
        {
        }
        /**
         * @param mixed $value
         * @param string $field_name
         * @param \WP_Post $post
         * @param bool $direction
         *
         * @return int|mixed
         */
        public function update_revision_field_value($value, $field_name, $post = null, $direction = false)
        {
        }
        public function restore_post_revision($post_id, $revision_id)
        {
        }
        protected function get_revisioned_fields()
        {
        }
        protected function get_latest_post_revision($post_id)
        {
        }
        protected function get_preview_id()
        {
        }
        protected function copy_meta($from_id, $to_id)
        {
        }
        protected function meta_key_matches_names($meta_key, $names)
        {
        }
        protected function filter_meta_by_keys($meta, $field_keys)
        {
        }
        protected function delete_old_meta($to_id, $meta_to_copy)
        {
        }
        protected function insert_new_meta($to_id, $meta_to_copy)
        {
        }
        protected function get_keys_for_mysql($meta_to_copy)
        {
        }
    }
}
namespace Carbon_Fields\Toolset {
    /**
     * Provides common tools when dealing with storage keys
     *
     * Key schema:
     * _[root_field_name]|[parent:field:names:separated:with:colons]|[complex:group:indexes:separated:with:colons]|[value_index]|[property]
     *
     * Example:
     * _countries|major_cities:name|0:1|0|value
     * This key is for a field called "name" inside the complex field "major_cities" with group index 1, which is inside the complex field "countries" with group index 0
     */
    class Key_Toolset
    {
        /**
         * Prefix appended to all keys
         */
        const KEY_PREFIX = '_';
        /**
         * Value property to use for fields which need to be kept "alive" when they have no values stored (e.g. Set field with 0 checkboxes checked)
         * Required to determine whether a field should use its default value or stay blank
         *
         * @var string
         */
        const KEEPALIVE_PROPERTY = '_empty';
        /**
         * Glue characters between segments in keys
         */
        const SEGMENT_GLUE = '|';
        /**
         * Glue characters between segments values in keys
         */
        const SEGMENT_VALUE_GLUE = ':';
        /**
         * Number of segments in a key
         */
        const TOTAL_SEGMENTS = 5;
        /**
         * "Equal" storage key pattern comparison type constant
         */
        const PATTERN_COMPARISON_EQUAL = '=';
        /**
         * "Starts with" storage key pattern comparison type constant
         */
        const PATTERN_COMPARISON_STARTS_WITH = '^';
        /**
         * Get the KEEPALIVE_PROPERTY
         * Needed since php 5.3 cannot parse $instance->property::constant ( but parses $instance::constant )
         *
         * @return string
         */
        public function get_keepalive_property()
        {
        }
        /**
         * Get sanitized hierarchy index for hierarchy
         *
         * @param array<string> $full_hierarchy
         * @param array<int> $full_hierarchy_index
         * @return array<int>
         */
        public function get_sanitized_hierarchy_index($full_hierarchy, $full_hierarchy_index)
        {
        }
        /**
         * Get a storage key for a simple root field
         *
         * @param string $field_base_name
         * @return string
         */
        protected function get_storage_key_for_simple_root_field($field_base_name)
        {
        }
        /**
         * Get a storage key for the root field
         * Suitable for deleting entire trees of values (e.g. Complex_Field)
         *
         * @param array $full_hierarchy
         * @return string
         */
        protected function get_storage_key_root($full_hierarchy)
        {
        }
        /**
         * Get a storage key up to the hierarchy index segment
         * Suitable for getting and deleting multiple values for a single field
         *
         * @param array<string> $full_hierarchy
         * @param array<int> $full_hierarchy_index
         * @return string
         */
        protected function get_storage_key_prefix($full_hierarchy, $full_hierarchy_index)
        {
        }
        /**
         * Get a full storage key for a single field value
         *
         * @param bool $is_simple_root_field
         * @param array<string> $full_hierarchy
         * @param array<int> $full_hierarchy_index
         * @param int $value_group_index
         * @param string $property
         * @return string
         */
        public function get_storage_key($is_simple_root_field, $full_hierarchy, $full_hierarchy_index, $value_group_index, $property)
        {
        }
        /**
         * Get a full storage key with optional wildcards for entry and value indexes
         *
         * @param bool $is_simple_root_field
         * @param array<string> $full_hierarchy
         * @param string $property
         * @param string $wildcard
         * @return string
         */
        public function get_storage_key_with_index_wildcards($is_simple_root_field, $full_hierarchy, $property = \Carbon_Fields\Value_Set\Value_Set::VALUE_PROPERTY, $wildcard = '%')
        {
        }
        /**
         * Get an array of storage key patterns for use when getting values from storage
         *
         * @param bool $is_simple_root_field
         * @param array<string> $full_hierarchy
         * @return array
         */
        public function get_storage_key_getter_patterns($is_simple_root_field, $full_hierarchy)
        {
        }
        /**
         * Get an array of storage key patterns for use when deleting values from storage
         *
         * @param bool $is_complex_field
         * @param bool $is_simple_root_field
         * @param array<string> $full_hierarchy
         * @param array<int> $full_hierarchy_index
         * @return array
         */
        public function get_storage_key_deleter_patterns($is_complex_field, $is_simple_root_field, $full_hierarchy, $full_hierarchy_index)
        {
        }
        /**
         * Convert an array of storage key patterns to a parentheses-enclosed sql comparison
         *
         * @param string $table_column
         * @param array $patterns
         * @return string
         */
        public function storage_key_patterns_to_sql($table_column, $patterns)
        {
        }
        /**
         * Check if a storage key matches any pattern
         *
         * @param string $storage_key
         * @param array $patterns
         * @return bool
         */
        public function storage_key_matches_any_pattern($storage_key, $patterns)
        {
        }
        /**
         * Check if an array of segments has all of its segments
         *
         * @param array<string> $segments_array
         * @return bool
         */
        public function is_segments_array_full($segments_array)
        {
        }
        /**
         * Convert a storage key to an array of its segments
         *
         * @param string $storage_key
         * @return array<string>
         */
        public function storage_key_to_segments_array($storage_key)
        {
        }
        /**
         * Convert a segment to an array of its values
         *
         * @param string $segment
         * @return array<mixed>
         */
        public function segment_to_segment_values_array($segment)
        {
        }
        /**
         * Get a parsed array of storage key segments and values
         *
         * @param string $storage_key
         * @return array
         */
        public function parse_storage_key($storage_key)
        {
        }
    }
    /**
     * Provides common tools when dealing with WordPress data such as posts, terms etc.
     */
    class WP_Toolset
    {
        /**
         * Get post title
         *
         * @param int $id
         * @return string $title The title of the item.
         */
        public function get_post_title($id)
        {
        }
        /**
         * Get term title
         *
         * @param int $id
         * @param string $subtype
         * @return string $title The title of the item.
         */
        public function get_term_title($id, $subtype = '')
        {
        }
        /**
         * Get user title
         *
         * @param int $id
         * @return string $title The title of the item.
         */
        public function get_user_title($id)
        {
        }
        /**
         * Get comment title
         *
         * @param int $id
         * @return string $title The title of the item.
         */
        public function get_comment_title($id)
        {
        }
        /**
         * Get term object for descriptor array
         *
         * @param array $term_descriptor
         * @return object
         */
        public function get_term_by_descriptor($term_descriptor)
        {
        }
        /**
         * Decorate any term descriptor to include the full term and taxonomy objects
         *
         * @param array $descriptor
         * @return mixed
         */
        public function wildcard_term_descriptor_to_full_term_descriptor($descriptor)
        {
        }
    }
}
namespace Carbon_Fields\Value_Set {
    /**
     * Class representing a field's value/value_set
     *
     * @see  Internal Glossary in DEVELOPMENT.MD
     */
    class Value_Set
    {
        /**
         * Value type which saves a single value
         */
        const TYPE_SINGLE_VALUE = 1;
        /**
         * Value type which saves multiple values with a single property
         */
        const TYPE_MULTIPLE_VALUES = 2;
        /**
         * Value type which saves a single value with multiple proerties
         */
        const TYPE_MULTIPLE_PROPERTIES = 3;
        /**
         * Value type which saves multiple values with multiple propertys
         */
        const TYPE_VALUE_SET = 4;
        /**
         * Default value property required for every value set
         */
        const VALUE_PROPERTY = 'value';
        /**
         * Value set type
         *
         * @var integer static::TYPE_* constant
         */
        protected $type = self::TYPE_SINGLE_VALUE;
        /**
         * Array of valid value set types
         *
         * @var array
         */
        protected $valid_types = array(self::TYPE_SINGLE_VALUE, self::TYPE_MULTIPLE_VALUES, self::TYPE_MULTIPLE_PROPERTIES, self::TYPE_VALUE_SET);
        /**
         * Array of empty values for every type
         *
         * @var array
         */
        protected $empty_values = array(self::TYPE_SINGLE_VALUE => '', self::TYPE_MULTIPLE_VALUES => array(), self::TYPE_MULTIPLE_PROPERTIES => array(), self::TYPE_VALUE_SET => array());
        /**
         * Registered value set properties (properties) with their default value (when the property is missing in the passed raw_value_set)
         *
         * @var array
         */
        protected $properties = array(self::VALUE_PROPERTY => '');
        /**
         * Data the value set represents
         *
         * @var null|array
         */
        protected $value_set = null;
        /**
         * Value set constructor
         *
         * @param integer $type static::TYPE_* constant
         * @param array $additional_properties
         */
        public function __construct($type = self::TYPE_SINGLE_VALUE, $additional_properties = array())
        {
        }
        /**
         * Format a raw value set into one which guarantees that only (and all) registered properties are present
         *
         * @param array $raw_value_set
         * @return array
         */
        protected function get_formatted_value_set($raw_value_set)
        {
        }
        /**
         * Return value set type
         *
         * @return int static::TYPE_* constant
         */
        public function get_type()
        {
        }
        /**
         * Return whether this value type requires a keepalive key
         *
         * @return boolean
         */
        public function keepalive()
        {
        }
        /**
         * Return whether the data is empty
         *
         * @return boolean
         */
        public function is_empty()
        {
        }
        /**
         * Return data formatted according to the value set $type
         *
         * @return null|string|array String, array of key-value pairs or array of arrays of key-value pairs
         */
        public function get()
        {
        }
        /**
         * Return the full value set data regardless of type
         *
         * @return array<array>
         */
        public function get_set()
        {
        }
        /**
         * Check if an array is flat
         *
         * @param array $array
         * @return boolean
         */
        protected function is_flat_array($array)
        {
        }
        /**
         * Convert a flat array to a raw value set
         *
         * @param array $value_array
         * @return array<array>
         */
        protected function flat_array_to_raw_value_set($value_array)
        {
        }
        /**
         * Set the value set data
         * Accepts: single value, array of values, array of key-values, array of arrays of key-values
         *
         * @param null|string|array $raw_value_set String, indexed array, array of key-value pairs or array of arrays of key-value pairs
         */
        public function set($raw_value_set)
        {
        }
        /**
         * Clear the value with an appropriate "empty" one
         */
        public function clear()
        {
        }
    }
}
namespace Carbon_Fields\Walker {
    /**
     * Walker for the administration nav menu editing.
     *
     * @uses Walker_Nav_Menu_Item_Edit
     */
    class Nav_Menu_Item_Edit_Walker extends \Walker_Nav_Menu_Edit
    {
        /**
         * Start the element output.
         *
         * @param string $output Passed by reference. Used to append additional content.
         * @param object $item   Menu item data object.
         * @param int    $depth  Depth of menu item. Used for padding.
         * @param array  $args   An array of arguments. @see wp_nav_menu()
         * @param int    $id     Current item ID.
         */
        public function start_el(&$output, $item, $depth = 0, $args = array(), $id = 0)
        {
        }
    }
}
namespace Carbon_Fields\Widget {
    /**
     * Widget, datastore and container handler class.
     */
    abstract class Widget extends \WP_Widget
    {
        public static $registered_widget_ids = array();
        /**
         * Widget Datastore
         *
         * @var \Carbon_Fields\Datastore\Widget_Datastore
         */
        protected $datastore;
        /**
         * Determines if widget wrapper html should be printed
         *
         * @see widget()
         * @var bool
         */
        protected $print_wrappers = true;
        /**
         * Control options to pass to WordPress Widget constructor
         *
         * @see setup()
         * @var array
         */
        protected $widget_control_options = array('width' => 295);
        /**
         * Array of Carbon Fields for the widget
         *
         * @var array
         */
        protected $custom_fields = array();
        /**
         * String prefix for widget ids
         *
         * @var string
         */
        protected $widget_id_prefix = 'carbon_fields_';
        /**
         * Create the widget.
         * A wrapper around the default WP widget constructor.
         *
         * @param string $widget_id   Widget id
         * @param string $title       Widget name
         * @param string $description Widget description
         * @param array  $fields      Array of fields
         * @param string $classname   String of CSS classes
         */
        public function setup($widget_id, $title, $description, $fields, $classname = '')
        {
        }
        /**
         * Updates a particular instance of a widget.
         *
         * @param array $new_instance New settings for this instance as input by the user via
         *                            WP_Widget::form().
         * @param array $old_instance Old settings for this instance.
         * @return array Settings to save or bool false to cancel saving.
         */
        public function update($new_instance, $old_instance)
        {
        }
        /**
         * Outputs the settings update form.
         *
         * @param  array $instance Current settings.
         * @return void
         */
        public function form($instance)
        {
        }
        /**
         * Registers the container definition for the widget.
         *
         * @param  boolean $render Whether the form should be rendered
         * @return void
         */
        public function register_container($render = false)
        {
        }
        /**
         * Echoes the widget content.
         * Sub-classes can over-ride this method to generate their widget code
         * but it is best to override front_end().
         *
         * @param array $args     Display arguments including 'before_title', 'after_title',
         *                        'before_widget', and 'after_widget'.
         * @param array $instance The settings for the particular instance of the widget.
         */
        public function widget($args, $instance)
        {
        }
        /**
         * The actual content of the widget.
         * Generally should be overriden by the specific widget classes.
         * @param array $args     Display arguments including 'before_title', 'after_title',
         *                        'before_widget', and 'after_widget'.
         * @param array $instance The settings for the particular instance of the widget.
         */
        public function front_end($args, $instance)
        {
        }
        /**
         * Append array of fields to the current fields set. All items of the array
         * must be instances of Field and their names should be unique for all
         * Carbon containers.
         *
         * @param array $fields
         */
        public function add_fields($fields)
        {
        }
        /**
         * Verify widget field names are unique.
         *
         * @param  string $name Field name
         * @return boolean
         */
        public function register_field_name($name)
        {
        }
        /**
         * Verify widget IDs are unique.
         *
         * @param  string $id Widget ID
         */
        public function register_widget_id($id)
        {
        }
    }
}
namespace Carbon_Fields {
    /**
     * Widget proxy factory class.
     * Used for shorter namespace access when creating a widget.
     */
    class Widget extends \Carbon_Fields\Widget\Widget
    {
    }
}
namespace {
    function carbon_field_exists($name, $container_type, $container_id = '')
    {
    }
    function carbon_get($object_id, $name, $container_type, $container_id = '')
    {
    }
    function carbon_set($object_id, $name, $value, $container_type, $container_id = '')
    {
    }
    function carbon_get_the_post_meta($name, $container_id = '')
    {
    }
    function carbon_get_post_meta($id, $name, $container_id = '')
    {
    }
    function carbon_set_post_meta($id, $name, $value, $container_id = '')
    {
    }
    function carbon_get_theme_option($name, $container_id = '')
    {
    }
    function carbon_set_theme_option($name, $value, $container_id = '')
    {
    }
    function carbon_get_the_network_option($name, $container_id = '')
    {
    }
    function carbon_get_network_option($id, $name, $container_id = '')
    {
    }
    function carbon_set_network_option($id, $name, $value, $container_id = '')
    {
    }
    function carbon_get_term_meta($id, $name, $container_id = '')
    {
    }
    function carbon_set_term_meta($id, $name, $value, $container_id = '')
    {
    }
    function carbon_get_user_meta($id, $name, $container_id = '')
    {
    }
    function carbon_set_user_meta($id, $name, $value, $container_id = '')
    {
    }
    function carbon_get_comment_meta($id, $name, $container_id = '')
    {
    }
    function carbon_set_comment_meta($id, $name, $value, $container_id = '')
    {
    }
    function carbon_get_nav_menu_item_meta($id, $name, $container_id = '')
    {
    }
    function carbon_set_nav_menu_item_meta($id, $name, $value, $container_id = '')
    {
    }
    function carbon_hex_to_rgba($hex)
    {
    }
}