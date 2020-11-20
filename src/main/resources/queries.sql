SELECT m.id, m.content,
       (SELECT u.name FROM users u WHERE u.id = m.sender_id) sender,
       (SELECT u.name FROM users u WHERE u.id = m.recipient_id) recipient
FROM messages m;