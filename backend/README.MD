```
cd backend
pip install -r requirements.txt
chmod +x setup.sh
./setup.sh
anvil --fork-url https://goerli.infura.io/v3/<KEY> --auto-impersonate
python3 main.py stake -c config.json
```