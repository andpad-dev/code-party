# How to feedback

You can use whichever you like:

* Issue
* Pull request

## Issue

Open [the issue template for feedback](https://github.com/andpad-dev/code-party/issues/new?template=feedback.yml)!

Fill the issue!

Submit!

## Pull request

Fork this repository!

```bash
git clone https://github.com/#{your_github_account}/code-party.git
cd code-party
git switch -c rubykaigi-2025-feedback
cp rubykaigi-2025/feedback.yaml rubykaigi-2025/feedback/#{your_github_account}.yaml
#{your_favorite_editor} rubykaigi-2025/feedback/#{your_github_account}.yaml
git add rubykaigi-2025/feedback/#{your_github_account}.yaml
git commit rubykaigi-2025/feedback/#{your_github_account}.yaml
git push origin rubykaigi-2025-feedback
```

Send a pull request!
