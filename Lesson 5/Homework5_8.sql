-- ���� ���������, ������� 3
-- (�� �������) ����������� ������������ ����� � ������� �������

use homework5;
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT = '�������';

INSERT INTO catalogs VALUES
  (NULL, '����������'),
  (NULL, '����������� �����'),
  (NULL, '����������'),
  (NULL, '������� �����'),
  (NULL, '����������� ������');
 
 
  select * from catalogs;
  
 -- ������������� ��������� ��������� ����������:
-- �������� ������������ ����� ����� ����������
-- �� ������� �������� � ��������� ���� field ������� tab ���� ����������� ��������,
-- ����� ������� ����� ���� ���������� � ����� ���������� ���������� � �������, ������ ���� ����� 
SELECT ROUND(EXP(SUM(LN(id)))) FROM catalogs;