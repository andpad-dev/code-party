# How to feedback

You can use whichever you like:

* Issue
* Pull request

## Issue

Open [the issue template for feedback](https://github.com/andpad-dev/code-party/issues/new?template=feedback-2026.yml)!

Fill the issue!

Submit!

## Pull request

Fork this repository!

```bash
git clone https://github.com/#{your_github_account}/code-party.git
cd code-party
git switch -c rubykaigi-2026-feedback
cp rubykaigi-2026/feedback.yaml rubykaigi-2026/feedback/#{your_github_account}.yaml
#{your_favorite_editor} rubykaigi-2026/feedback/#{your_github_account}.yaml
git add rubykaigi-2026/feedback/#{your_github_account}.yaml
git commit rubykaigi-2026/feedback/#{your_github_account}.yaml
git push origin rubykaigi-2026-feedback
```

Open a pull request!
