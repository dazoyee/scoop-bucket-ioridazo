echo "確認のうえでEnterを押下してください。"
Read-Host

echo "bucketのアップデートを開始します。"
scoop update
echo "bucketのアップデートを正常に完了しました。"

echo "appsのアップデートを開始します。"
scoop update *
echo "appsのアップデートを正常に完了しました。"

echo "確認のうえでEnterを押下してください。"
Read-Host
