START TRANSACTION;

UPDATE questions
   SET status = 'active',
       updated_at = CURRENT_TIMESTAMP(6)
 WHERE source_type = 'c3_transformed'
   AND status = 'draft';

COMMIT;
