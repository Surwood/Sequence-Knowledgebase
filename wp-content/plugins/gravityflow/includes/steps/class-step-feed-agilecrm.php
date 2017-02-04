<?php
/**
 * Gravity Flow Step Feed Agile CRM
 *
 *
 * @package     GravityFlow
 * @subpackage  Classes/Gravity_Flow_Step_Feed_AgileCRM
 * @copyright   Copyright (c) 2016, Steven Henty
 * @license     http://opensource.org/licenses/gpl-2.0.php GNU Public License
 * @since       1.3.1.4
 */

if ( ! class_exists( 'GFForms' ) ) {
	die();
}

class Gravity_Flow_Step_Feed_AgileCRM extends Gravity_Flow_Step_Feed_Add_On {
	public $_step_type = 'agilecrm';

	protected $_class_name = 'GFAgileCRM';

	public function get_label() {
		return esc_html__( 'Agile CRM', 'gravityflow' );
	}

	public function get_icon_url() {
		return $this->get_base_url() . '/images/agilecrm-icon.svg';
	}
}

Gravity_Flow_Steps::register( new Gravity_Flow_Step_Feed_AgileCRM() );
