<?php
/**
 * Gravity Flow Step Feed Zoho CRM
 *
 *
 * @package     GravityFlow
 * @subpackage  Classes/Gravity_Flow_Step_Feed_ZohoCRM
 * @copyright   Copyright (c) 2016, Steven Henty
 * @license     http://opensource.org/licenses/gpl-2.0.php GNU Public License
 * @since       1.3.2-dev
 */

if ( ! class_exists( 'GFForms' ) ) {
	die();
}

class Gravity_Flow_Step_Feed_ZohoCRM extends Gravity_Flow_Step_Feed_Add_On {
	public $_step_type = 'zohocrm';

	protected $_class_name = 'GFZohoCRM';

	public function get_label() {
		return esc_html__( 'Zoho CRM', 'gravityflow' );
	}

}

Gravity_Flow_Steps::register( new Gravity_Flow_Step_Feed_ZohoCRM() );
