create table profile (
    userID  integer,
    name varchar(50),
    email varchar(50),
    password varchar(50),
    date_of_birth date,
    lastlogin   timestamp
);

create table friend (
    userID1 integer,
    userID2 integer,
    JDate date,
    requestText varchar(200)
);

create table pendingFriend(
    fromID integer,
    toID integer,
    requestText varchar(200)
);

create table groupInfo(
    gID integer,
    name varchar(50),
    size integer,
    description varchar(200)
);

create table groupMember(
    gID integer,
    userID integer,
    role varchar(20),
    lastConfirmed timestamp
);

create table pendingGroupMember(
    gID integer,
    userID integer,
    requestText varchar(200),
    requestTime timestamp
);

create table message (
    msgID integer,
    fromID integer,
    messageBody varchar(200),
    toUserID integer,
    toGroupID integer,
    timeSent timestamp
);

create table messageRecipient(
    msgID integer,
    userID integer
);

