CREATE KEYSPACE test WITH replication = {'class': 'SimpleStrategy' , 'replication_factor': '1'};

CREATE TABLE test.posts (
  author_id text,
  post_id timeuuid,
  author_name text static,
  reviewer_name text,
  post_rating int,
  post_title text,
  post_tags list<text>,
  comments map<int, text>,
  PRIMARY KEY ((author_id), post_id)
);

CREATE INDEX ON test.posts (post_tags);
CREATE INDEX ON test.posts (comments);
CREATE INDEX ON test.posts (KEYS(comments));
