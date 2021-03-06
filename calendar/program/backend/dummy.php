<?php
require_once(INSTALL_PATH . 'plugins/calendar/program/backend/backend.php');

final class calendar_dummy extends Backend 
{
  public function getCtags() {
  }
  
  public function searchEvents(
    $str,
    $label
  ) {
  }
  
  public function newCalendar(
    $account,
    $displayname,
    $color
  ) {
  }
  
  public function removeCalendar(
    $account
  ) {
  
  }
   
  public function newEvent(
    $start,
    $end,
    $summary,
    $description,
    $location,
    $categories,
    $allDay,
    $recur,
    $expires,
    $occurrences,
    $byday=false,
    $bymonth=false,
    $bymonthday=false,
    $recurrence_id=false,
    $exdates=false,
    $reminderbefore=false,
    $remindertype=false,
    $remindermailto=false,
    $uid=false,
    $client=false
  ) {
  }

  public function editEvent(
    $id,
    $start,
    $end,
    $summary,
    $description,
    $location,
    $categories,
    $recur,
    $expires,
    $occurrences,
    $byday=false,
    $bymonth=false,
    $bymonthday=false,
    $recurrence_id=false,
    $exdates=false,
    $reminderbefore=false,
    $remindertype=false,
    $remindermailto=false,
    $allDay=false,
    $old_categories=false,
    $caldav=false
  ) {
  }

  public function moveEvent(
    $id,
    $start,
    $end,
    $allDay,
    $reminder
  ) {
  }
  
  public function resizeEvent(
    $id,
    $start,
    $end,
    $reminder
  ) {
  }

  public function removeEvent(
    $id,
    $categories=false
  ) {
  }
  
  public function uninstall() {
  }
  
  public function purgeEvents() {
  }
  
  public function removeDuplicate($id) {
  }
  
  public function truncateEvents($mode=0) {
  }
  
  public function removeReminder(
    $id,
    $event_id,
    $ts
  ) {
  }
  
  public function getReminders(
    $start,
    $type='popup'
  ) {
  }
  
  public function scheduleReminders($event){
  }
  
  public function getEvents(
    $estart,
    $eend,
    $labels=array(),
    $category=false,
    $filter=false,
    $client=false
  ) {
    $year = date('Y');
    $month = date('n');
    $day = date('j');
    $events = array();
    
    $events[]=array( 
      'event_id'    => 0,
      'start'       => mktime(9, 0, 0, $month, $day-1, $year),
      'end'         => mktime(17, 0, 0, $month, $day-1, $year),
      'summary'     => 'Work',
      'description' => 'doing working stuff',
      'location'    => 'the office',
      'categories'  => 'Work',
      'all_day'     => 0,
    );
    
    $events[]=array( 
      'event_id'    => 1,
      'start'       => mktime(0, 0, 0, $month, $day, $year),
      'summary'     => 'Birthday',
      'description' => 'today it\'s my birthday!',
      'location'    => 'home',
      'categories'  => 'Personal',
      'all_day'     => 1,
    );
    
    $events[]=array( 
      'event_id'    => 2,
      'start'       => mktime(9, 0, 0, $month, $day+1, $year),
      'end'         => mktime(17, 0, 0, $month, $day+1, $year),
      'summary'     => 'Work',
      'description' => 'doing working stuff',
      'location'    => 'the office',
      'categories'  => 'Work',
      'all_day'     => 0,
    );
    
    $events[]=array( 
      'event_id'    => 3,
      'start'       => mktime(11, 0, 0, $month, $day+2, $year),
      'end'         => mktime(12, 30, 0, $month, $day+2, $year),
      'summary'     => 'Hair cut',
      'description' => 'getting a new hair cut',
      'location'    => 'barber 2000',
      'categories'  => 'Personal',
      'all_day'     => 0,
    );
    
    $events[]=array( 
      'event_id'    => 4,
      'start'       => mktime(13, 0, 0, $month, $day+2, $year),
      'end'         => mktime(14, 30, 0, $month, $day+2, $year),
      'summary'     => 'Luch',
      'description' => 'lunch with family',
      'location'    => 'lunchroom',
      'categories'  => 'Family',
      'all_day'     => 0,
    );
    
    $events[]=array( 
      'event_id'    => 5,
      'start'       => mktime(0, 0, 0, $month, $day+3, $year),
      'end'         => mktime(0, 0, 0, $month, $day+10, $year),
      'summary'     => 'Holiday',
      'description' => '',
      'location'    => 'Spain',
      'categories'  => 'Holiday',
      'all_day'     => 1,
    );
    
    $events[]=array( 
      'event_id'    => 6,
      'start'       => mktime(16, 0, 0, $month, $day-2, $year),
      'end'         => mktime(23, 0, 0, $month, $day-2, $year),
      'summary'     => 'Doing stuff',
      'description' => 'doing important stuff',
      'location'    => 'the world',
      'all_day'     => 0,
    );

    return $events;
  }
  
  function exportEvents($categories=false){
  }

  public function replicateEvents(
    $estart,
    $eend,
    $category=false,
    $type='events'
  ) {
  }
  
  public function removeTimestamps() {
  }
  
  public function removeDuplicates($table = 'events') {
  }
  
  public function getEvent($eventid){
  }
  
  public function getEventByUID($uid,$recurrence_id=0){
  }
  
  public function getEventsByUID(
    $uid
  ) {
  }
}
?>