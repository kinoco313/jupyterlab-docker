# ベースイメージの指定
FROM python:3

# 作業ディレクトリの設定
WORKDIR /app

# pipのアップデート
RUN pip install --update pip

# パッケージのインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# JupyterLabのインストール
RUN pip install jupyterlab

# JupyterLabの起動
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
