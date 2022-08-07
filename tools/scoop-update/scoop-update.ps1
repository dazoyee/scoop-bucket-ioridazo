echo "確認のうえでEnterを押下してください。"
Read-Host

echo "ローカルのbucketのアップデートを開始します。"
..\..\bin\update-buckets.ps1
echo "ローカルのbucketのアップデートを正常に完了しました。"

echo "bucketのアップデートを開始します。"
scoop update
echo "bucketのアップデートを正常に完了しました。"

echo "appsのアップデートを開始します。"
scoop update *
echo "appsのアップデートを正常に完了しました。"

echo "確認のうえでEnterを押下してください。"
Read-Host
