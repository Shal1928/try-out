<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');

if (!function_exists('generate_options')) {

	function generate_options($from, $to, $select,$callback=false) {
		$reverse = false;
		if ($from > $to) {
			$tmp = $from;
			$from = $to;
			$to = $tmp;
			$reverse = true;
		}
		$return_string = array();
		for ($i = $from; $i <= $to; $i++) {
			if ($i === ($select))
				$return_string[] = '<option value="' . $i . '" selected="selected">' . ($callback ? $callback($i) : $i) . '</option>';
			else
				$return_string[] = '<option value="' . $i . '">' . ($callback ? $callback($i) : $i) . '</option>';
			$j++;
		}
		if ($reverse) {
			$return_string = array_reverse($return_string);
		}
		return join('', $return_string);
	}

}
if (!function_exists('callback_month')) {

	function callback_month($month) {
		return date('F', mktime(0, 0, 0, $month, 1));
	}

}
if (!function_exists('format_date')) {

	function format_date($date) {
		$parts = explode('-', $date);
		return date('F j, Y', mktime(0, 0, 0, $parts[1], $parts[2], $parts[0]));
	}

}

if (!function_exists('print_month')) {

	function print_month($x) {
		$bulan = array('January', 'February', 'March', 'April',
			'Mei', 'June', 'July', 'August',
			'September', 'October', 'November', 'December');
		return $bulan[$x - 1];
	}

}
?>