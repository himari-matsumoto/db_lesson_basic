Q1
CREATE TABLE departments (
  department_id INT unsigned auto_increment PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
   );
   
   Q2
   ALTER TABLE people add department_id INT unsigned AFTER email;


   Q3
   INSERT INTO departments (name) 
   VALUES ('営業'),('開発'),('経理'),('人事'),('情報システム');

  Q3
  INSERT INTO people (name, email, department_id, age, gender)
  VALUES 
  ('幾田りら', 'rira@gizumo.jp', 1, 24, 2),
  ('井口さとる', 'satoru@gizumo.jp', 1, 27, 1),
  ('倉田大誠', 'taisei@gizumo.jp', 1, 37, 1),
  ('小室えりこ', 'eriko@gizumo.jp', 1, 25, 2),
  ('岸本りさ', 'risa@gizumo.jp', 2, 24, 2),
  ('堀池たかし', 'takashi@gizumo.jp', 2, 26, 1),
  ('坂本かおり', 'kaori@gizumo.jp', 2, 24, 2),
  ('渡辺さくら', 'sakura@gizumo.jp', 3, 23, 2),
  ('斎藤たいよう', 'taiyou@gizumo.jp', 4, 24, 1),
  ('松本由悠里音', 'yurine@gizumo.jp', 5, 20, 2);

  Q3
  INSERT INTO reports (person_id, content)
  VALUES
  (12, 'わたしきょうは元気ですよ'),
  (13, 'ぼくは今日も不機嫌で嫌だ'),
  (14, '庭に咲いたお花が綺麗で嬉しい'),
  (15, '猫に癒される日々です'),
  (16, '虹が見えた日はラッキー'),
  (17, 'なにか良いことないかなああ'),
  (18, '高校では吹奏楽部に所属していました'),
  (19, '何故かあたまが痛いです'),
  (20, '俺もそろそろモテたいんだよ'),
  (21, 'セブンのちいかわ饅食べたいです');

  Q4
  DELETE FROM people WHERE person_id = 7;

  Q5
  SELECT name, age 
  FROM people WHERE gender = 1 ORDER BY age DESC ;

  Q6
  --peopletableからdepartmentidが1になっているレコードのうち、カラムは名前、メール、年齢を追加した、日付が昇順に取得する
  -- ACEは省略できる


Q7
SELECT name FROM people WHERE age > 49 OR age < 40 AND gender = 1
AND age > 29 OR age < 20 AND gender = 2;

Q8
SELECT age FROM people WHERE department_id = 1
ORDER BY age ASC;

Q9
SELECT AVG(age) AS average_age FROM people WHERE gender = 2 
AND department_id = 2;

Q10
SELECT p.name, d.name, r.content
FROM people AS p JOIN departments AS d ON p.department_id = d.department_id
JOIN reports AS r ON p.person_id = r.person_id;

SELECT p.person_id, p.name, r.content FROM people p LEFT OUTER JOIN reports r USING (person_id);

SELECT p.name FROM people p LEFT JOIN reports r ON p.person_id = r.person_id 
WHERE r.content IS NULL;
