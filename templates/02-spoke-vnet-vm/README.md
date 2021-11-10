# スポーク仮想ネットワークの作成

仮想ネットワーク（スポーク部分）と仮想マシンの展開。
仮想マシンには Public IP アドレスを割り当て、インターネット経由での接続が可能であることを確認する。

<br />

### パラメーター
- **virtualMachineName**: スポーク VNET に配置する仮想マシン名
- **adminUsername**: 仮想マシン管理者ユーザー名
- **adminPassword**: 仮想マシン管理者パスワード
- **resourceGroup**: スポーク VNET を展開したリソースグループ名
- **virtualNetworkName**: スポーク VNET 名
- **vnetAddressSpace**: スポーク VNET のアドレス範囲
- **subnetName**: 仮想マシンを展開するサブネット名
- **subnetAddressSpace**: サブネットのアドレス範囲
- **publicIPAddressName**: 仮想マシンにアタッチする Public IP アドレス名