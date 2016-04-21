mkdir /srv;
mkdir /usr/local/src;
cd /usr/local/src;
git clone https://github.com/saltstack/salt;
cd salt;
pip install -r requirements/base.txt;
pip install -r requirements/zeromq.txt;
python setup.py install;
