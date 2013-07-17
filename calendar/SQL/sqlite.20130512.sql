CREATE TABLE 'events_tmp' (
  'event_id' INTEGER,
  'uid' TEXT,
  'recurrence_id' INTEGER,
  'exdates' TEXT,
  'user_id' INTEGER NOT NULL DEFAULT '0',
  'start' INTEGER NOT NULL DEFAULT '0',
  'end' INTEGER NOT NULL DEFAULT '0',
  'expires' INTEGER NOT NULL DEFAULT '0',
  'tzname' VARCHAR ( 255 ) DEFAULT 'UTC',
  'rr' TEXT default NULL,
  'recurring' TEXT NOT NULL,
  'occurrences' INTEGER DEFAULT '0',
  'byday' TEXT,
  'bymonth' TEXT, 
  'bymonthday' TEXT,
  'summary' TEXT NOT NULL,
  'description' TEXT NOT NULL,
  'location' TEXT NOT NULL DEFAULT '',
  'categories' TEXT NOT NULL DEFAULT '',
  'group' TEXT,
  'caldav' TEXT,
  'url' TEXT,
  'timestamp' timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  'del' INTEGER NOT NULL DEFAULT '0',
  'reminder' INTEGER DEFAULT NULL,
  'reminderservice' TEXT,
  'remindermailto' TEXT,
  'remindersent' INTEGER DEFAULT NULL,
  'notified' INTEGER NOT NULL default '0',
  'client' TEXT
) ;

INSERT INTO events_tmp (
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
)
SELECT
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
FROM events;

DROP TABLE events;

CREATE TABLE 'events' (
  'event_id' INTEGER,
  'uid' TEXT,
  'recurrence_id' INTEGER,
  'exdates' TEXT,
  'user_id' INTEGER NOT NULL DEFAULT '0',
  'start' INTEGER NOT NULL DEFAULT '0',
  'end' INTEGER NOT NULL DEFAULT '0',
  'expires' INTEGER NOT NULL DEFAULT '0',
  'tzname' VARCHAR ( 255 ) DEFAULT 'UTC',
  'rr' TEXT default NULL,
  'recurring' TEXT NOT NULL,
  'occurrences' INTEGER DEFAULT '0',
  'byday' TEXT,
  'bymonth' TEXT, 
  'bymonthday' TEXT,
  'summary' TEXT NOT NULL,
  'description' TEXT NOT NULL,
  'location' TEXT NOT NULL DEFAULT '',
  'categories' TEXT NOT NULL DEFAULT '',
  'group' TEXT,
  'caldav' TEXT,
  'url' TEXT,
  'timestamp' timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  'del' INTEGER NOT NULL DEFAULT '0',
  'reminder' INTEGER DEFAULT NULL,
  'reminderservice' TEXT,
  'remindermailto' TEXT,
  'remindersent' INTEGER DEFAULT NULL,
  'notified' INTEGER NOT NULL default '0',
  'client' TEXT,
 PRIMARY KEY ('event_id' ASC),
 CONSTRAINT 'user_id_fk_events' FOREIGN KEY ('user_id')
   REFERENCES 'users'('user_id') ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO events (
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
)
SELECT
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
FROM events_tmp;

DROP TABLE events_tmp;

CREATE TABLE 'events_cache_tmp' (
  'event_id' INTEGER,
  'uid' TEXT,
  'recurrence_id' INTEGER,
  'exdates' TEXT,
  'user_id' INTEGER NOT NULL DEFAULT '0',
  'start' INTEGER NOT NULL DEFAULT '0',
  'end' INTEGER NOT NULL DEFAULT '0',
  'expires' INTEGER NOT NULL DEFAULT '0',
  'tzname' VARCHAR ( 255 ) DEFAULT 'UTC',
  'rr' TEXT default NULL,
  'recurring' TEXT NOT NULL,
  'occurrences' INTEGER DEFAULT '0',
  'byday' TEXT,
  'bymonth' TEXT, 
  'bymonthday' TEXT,
  'summary' TEXT NOT NULL,
  'description' TEXT NOT NULL,
  'location' TEXT NOT NULL DEFAULT '',
  'categories' TEXT NOT NULL DEFAULT '',
  'group' TEXT,
  'caldav' TEXT,
  'url' TEXT,
  'timestamp' timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  'del' INTEGER NOT NULL DEFAULT '0',
  'reminder' INTEGER DEFAULT NULL,
  'reminderservice' TEXT,
  'remindermailto' TEXT,
  'remindersent' INTEGER DEFAULT NULL,
  'notified' INTEGER NOT NULL default '0',
  'client' TEXT
) ;

INSERT INTO events_cache_tmp (
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
)
SELECT
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
FROM events_cache;

DROP TABLE events_cache;

CREATE TABLE 'events_cache' (
  'event_id' INTEGER,
  'uid' TEXT,
  'recurrence_id' INTEGER,
  'exdates' TEXT,
  'user_id' INTEGER NOT NULL DEFAULT '0',
  'start' INTEGER NOT NULL DEFAULT '0',
  'end' INTEGER NOT NULL DEFAULT '0',
  'expires' INTEGER NOT NULL DEFAULT '0',
  'tzname' VARCHAR ( 255 ) DEFAULT 'UTC',
  'rr' TEXT default NULL,
  'recurring' TEXT NOT NULL,
  'occurrences' INTEGER DEFAULT '0',
  'byday' TEXT,
  'bymonth' TEXT, 
  'bymonthday' TEXT,
  'summary' TEXT NOT NULL,
  'description' TEXT NOT NULL,
  'location' TEXT NOT NULL DEFAULT '',
  'categories' TEXT NOT NULL DEFAULT '',
  'group' TEXT,
  'caldav' TEXT,
  'url' TEXT,
  'timestamp' timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  'del' INTEGER NOT NULL DEFAULT '0',
  'reminder' INTEGER DEFAULT NULL,
  'reminderservice' TEXT,
  'remindermailto' TEXT,
  'remindersent' INTEGER DEFAULT NULL,
  'notified' INTEGER NOT NULL default '0',
  'client' TEXT,
 PRIMARY KEY ('event_id' ASC),
 CONSTRAINT 'user_id_fk_events_cache' FOREIGN KEY ('user_id')
   REFERENCES 'users'('user_id') ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO events_cache (
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
)
SELECT
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
FROM events_cache_tmp;

DROP TABLE events_cache_tmp;

CREATE TABLE 'events_caldav_tmp' (
  'event_id' INTEGER,
  'uid' TEXT,
  'recurrence_id' INTEGER,
  'exdates' TEXT,
  'user_id' INTEGER NOT NULL DEFAULT '0',
  'start' INTEGER NOT NULL DEFAULT '0',
  'end' INTEGER NOT NULL DEFAULT '0',
  'expires' INTEGER NOT NULL DEFAULT '0',
  'tzname' VARCHAR ( 255 ) DEFAULT 'UTC',
  'rr' TEXT default NULL,
  'recurring' TEXT NOT NULL,
  'occurrences' INTEGER DEFAULT '0',
  'byday' TEXT,
  'bymonth' TEXT, 
  'bymonthday' TEXT,
  'summary' TEXT NOT NULL,
  'description' TEXT NOT NULL,
  'location' TEXT NOT NULL DEFAULT '',
  'categories' TEXT NOT NULL DEFAULT '',
  'group' TEXT,
  'caldav' TEXT,
  'url' TEXT,
  'timestamp' timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  'del' INTEGER NOT NULL DEFAULT '0',
  'reminder' INTEGER DEFAULT NULL,
  'reminderservice' TEXT,
  'remindermailto' TEXT,
  'remindersent' INTEGER DEFAULT NULL,
  'notified' INTEGER NOT NULL default '0',
  'client' TEXT
) ;

INSERT INTO events_caldav_tmp (
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
)
SELECT
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
FROM events_caldav;

DROP TABLE events_caldav;

CREATE TABLE 'events_caldav' (
  'event_id' INTEGER,
  'uid' TEXT,
  'recurrence_id' INTEGER,
  'exdates' TEXT,
  'user_id' INTEGER NOT NULL DEFAULT '0',
  'start' INTEGER NOT NULL DEFAULT '0',
  'end' INTEGER NOT NULL DEFAULT '0',
  'expires' INTEGER NOT NULL DEFAULT '0',
  'tzname' VARCHAR ( 255 ) DEFAULT 'UTC',
  'rr' TEXT default NULL,
  'recurring' TEXT NOT NULL,
  'occurrences' INTEGER DEFAULT '0',
  'byday' TEXT,
  'bymonth' TEXT, 
  'bymonthday' TEXT,
  'summary' TEXT NOT NULL,
  'description' TEXT NOT NULL,
  'location' TEXT NOT NULL DEFAULT '',
  'categories' TEXT NOT NULL DEFAULT '',
  'group' TEXT,
  'caldav' TEXT,
  'url' TEXT,
  'timestamp' timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  'del' INTEGER NOT NULL DEFAULT '0',
  'reminder' INTEGER DEFAULT NULL,
  'reminderservice' TEXT,
  'remindermailto' TEXT,
  'remindersent' INTEGER DEFAULT NULL,
  'notified' INTEGER NOT NULL default '0',
  'client' TEXT,
 PRIMARY KEY ('event_id' ASC),
 CONSTRAINT 'user_id_fk_events_caldav' FOREIGN KEY ('user_id')
   REFERENCES 'users'('user_id') ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO events_caldav (
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
)
SELECT
  'event_id',
  'uid',
  'recurrence_id',
  'exdates',
  'user_id',
  'start',
  'end',
  'expires',
  'rr',
  'recurring',
  'occurrences',
  'byday',
  'bymonth', 
  'bymonthday',
  'summary',
  'description',
  'location',
  'categories',
  'group',
  'caldav',
  'url',
  'timestamp',
  'del',
  'reminder',
  'reminderservice',
  'remindermailto',
  'remindersent',
  'notified',
  'client'
FROM events_caldav_tmp;

DROP TABLE events_caldav_tmp;

UPDATE 'system' SET value='initial|20130512' WHERE name='myrc_calendar';