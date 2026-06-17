START TRANSACTION;

UPDATE questions
   SET status = 'draft',
       updated_at = CURRENT_TIMESTAMP(6)
 WHERE source_type = 'c3_transformed'
   AND status = 'active';

COMMIT;
