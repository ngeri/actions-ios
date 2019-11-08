swiftlint.lint_all_files = true
swiftlint.lint_files inline_mode: true

xcresult_file = Dir.glob("./**/*.xcresult").first

xcov.report(
   scheme: 'Actions-iOS',
   project: 'Actions-iOS.xcodeproj',
   xccov_file_direct_path: xcresult_file,
   minimum_coverage_percentage: 91.0
)
