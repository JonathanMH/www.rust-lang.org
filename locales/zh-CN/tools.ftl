## tools/index.hbs

tools-page-title = 工具
tools-editor-support-heading = 主流编辑器支持
tools-editor-support-description =
    无论您喜欢用命令行还是可视化编辑器，都有适合的Rust集成供您选择。
    您也可以使用 <a href="https://github.com/rust-lang/rls">Rust 语言服务（RLS）</a>来为自己的编辑器添加 Rust 支持。
tools-build-heading = 无痛的构建体验
tools-build-description = Cargo 是 Rust 的构建工具，将常用命令集于一身，无需引入其他命令。
tools-build-install-heading = 安装
tools-build-install-description =
    <a href="https://crates.io">crates.io</a> 上拥有成千上万的软件包，您想要的解决方案在这里几乎都能找到。
    站在巨人的肩膀上，让您的团队远离重复，专注创新。
tools-build-test-heading = 测试
tools-build-test-description =
    利用 Rust 出色的测试工具，您将对代码充满信心。<code class="nowrap">cargo test</code>
    是 Rust 统一的测试方案。测试代码既可写在功能代码之后，也可放在独立文件中，这为所有的测试需求提供了一种解决方案。
tools-build-deploy-heading = 部署
tools-build-deploy-description =
    <code class="nowrap">cargo build</code>
    可为不同平台构建精炼的可执行文件。仅需一行命令，您的代码就能针对
    Windows、Linux、macOS 和 Web 进行编译。支持全部现代平台接口，不需要定制构建文件。
tools-automation-heading = 利用自动化加速
tools-automation-description = Rust 的工业级工具能够让团队无惧协作，专注于重要的任务。
tools-automation-rustfmt-heading = Rustfmt
tools-automation-rustfmt-description =
    Rustfmt 用于自动格式化 Rust 代码，使代码更加容易阅读、编写和维护。
    最重要一点是：你再也不必为空格或大括号位置问题争论了。
tools-automation-rustfmt-link = 前往源码库
tools-automation-clippy-heading = Clippy
tools-automation-clippy-description =
    <b>“您似乎正在编写一个迭代器。”</b><br>
    Clippy 能够帮助开发者编写出惯用的代码并强制执行标准，无论开发者处于何种开发水平。
tools-automation-clippy-link = 前往源码库
tools-automation-cargo-doc-heading = Cargo Doc
tools-automation-cargo-doc-description =
    Cargo 文档构建器生成文档的功能强大而又便捷，因此没有 API 不存在文档的情况。
    您可以通过 <code class="nowrap">cargo doc</code> 在本地生成文档，
    还可以通过 <a href="https://docs.rs">docs.rs</a> 在线获取公开的 crate 文档。
tools-automation-cargo-doc-link = 前往站点

## tools/install.hbs

tools-install-page-title = 安装 Rust
install-using-rustup-heading = 使用 Rustup（推荐）
install-notes-heading = Rust 安装须知
install-notes-getting-started-description =
    如果您刚开始学习 Rust 并想了解更多细节，请阅读
    <a href="{ $getting-started-href }">马上开始</a> 页面。
install-notes-rustup-heading = 用 <code>rustup</code> 管理工具链
install-notes-rustup-description =
    <p>
       Rust 由工具
       <a href="https://github.com/rust-lang/rustup.rs"><code>rustup</code></a>
       安装和管理。Rust 有着以 6 星期为周期的
       <a href="https://github.com/rust-lang/rfcs/blob/master/text/0507-release-channels.md">
         快速版本迭代机制 </a>，支持
       <a href="https://forge.rust-lang.org/platform-support.html">
         大量平台</a>，因而不同时期存在大量不同的 Rust 构建版本。
       <code>rustup</code> 管理不同平台下的 Rust 构建版本并使其互相兼容，
       支持安装由 beta 和 nightly 频道发布的版本，并支持其他用于交叉编译的编译版本。
     </p>
     <p>
       如果您曾安装过 <code>rustup</code>，您可以执行 <code>rustup update</code>
       以升级 Rust。
     </p>
     <p>
       获取更多信息请查阅
       <a href="https://github.com/rust-lang/rustup.rs/blob/master/README.md">
       <code>rustup</code> 文档</a>。
     </p>
install-notes-path-heading = 配置 <code>PATH</code> 环境变量
install-notes-path-description =
    <p>
      在 Rust 开发环境中，所有工具都安装在
      <span class="platform-specific not-win di">
        <code>~/.cargo/bin</code>
      </span>
      <span class="platform-specific win dn">
        <code>%USERPROFILE%\.cargo\bin</code>
      </span> 目录中，您可以在这里找到包括
      <code>rustc</code>、<code>cargo</code> 和 <code>rustup</code>
      在内的 Rust 工具链。
    </p>
    <p>
      Rust 开发者通常会将该目录加入
      <a href="https://zh.wikipedia.org/wiki/PATH_(%E5%8F%98%E9%87%8F)">
      <code>PATH</code> 环境变量</a>中。在安装过程中，
      <code>rustup</code> 会尝试配置 <code>PATH</code>。
      由于不同平台、命令行 Shell 之间存在差异，<code>rustup</code> 中也可能存在
      Bug，因此在终端重启或用户重新登录之前，<code>rustup</code> 对
      <code>PATH</code> 的修改可能不会生效，甚至完全无效。
    </p>
    <p>
      如果安装后在终端尝试执行 <code>rustc --version</code> 失败，那么这就是最可能的原因。
    </p>
install-notes-windows-heading = Windows 注意事项
install-notes-windows-description =
    <p>
      在 Windows 上，Rust 还需要  Visual Studio 2013 及以上版本的 C++ 构建工具。
      获取该构建工具最简单的方式是安装
      <a href="https://www.visualstudio.com/downloads/#build-tools-for-visual-studio-2019">
        Visual Studio 2019 生成工具
      </a>，它只提供了 Visual C++ 的构建工具。此外，您还可以<a href="https://www.visualstudio.com/downloads/">安装</a>
      Visual Studio 2019、Visual Studio 2017、Visual Studio 2015 或 Visual Studio 2013 并在安装时选择“C++ 工具集”。
    </p>
    <p>
      有关在 Windows 上配置 Rust 的更多信息见
      <a href="https://github.com/rust-lang/rustup.rs/blob/master/README.md#working-with-rust-on-windows">
      Windows 专用的 <code>rustup</code> 文档</a>。
    </p>
install-other-methods-heading = 其它安装方式
install-other-methods-description = 对于大多数开发者而言，推荐按照以上说明用 <code>rustup</code> 来安装 Rust 。当然，Rust 也可通过其它方式安装。
install-other-methods-link = 了解更多

## components/tools/rustup.hbs

tools-rustup-unixy = 您似乎正在运行 macOS、Linux 或其它类 Unix 系统。要下载 Rustup 并安装 Rust，请在终端中运行以下命令，然后遵循屏幕上的指示。
tools-rustup-windows = 您似乎正在运行 Windows。要安装 Rust，请下载并运行以下程序，然后遵循屏幕上的指示。
tools-rustup-wsl-heading = Windows 的 Linux 子系统（WSL）
tools-rustup-wsl = 如果您是 Windows 的 Linux 子系统（WSL）用户，要安装 Rust，请在终端中运行以下命令，然后遵循屏幕上的指示。
tools-rustup-unknown = Rust 可在 Windows、Linux、macOS、FreeBSD 和 NetBSD 上运行。如果您在这些平台上看到了本条信息，请报告一个问题并附上以下内容：
tools-rustup-report = 报告问题
tools-rustup-manual-unixy = 如果您正在运行 Unix，要安装 Rust，<br>请在终端中运行以下命令，然后遵循屏幕上的指示。
tools-rustup-manual-windows = 如果您正在运行 Windows，<br>请下载并运行 <a href="https://win.rustup.rs">rustup‑init.exe</a>，然后遵循屏幕上的指示。
tools-rustup-manual-default = 如果您正在运行 WSL、Linux 或 macOS 等类-Unix 系统，要安装 Rust，<br>请在终端中运行以下命令，然后遵循屏幕上的指示。
tools-rustup-manual-default-windows = 如果您正在运行 Windows，<br>请下载并运行 <a href="https://win.rustup.rs">rustup‑init.exe</a>，然后遵循屏幕上的指示。

## components/tools/editors.hbs

tools-editor-vscode = VS Code
tools-editor-sublime = Sublime Text 3
tools-editor-atom = Atom
tools-editor-idea = IntelliJ IDEA
tools-editor-eclipse = Eclipse
tools-editor-vim = Vim
tools-editor-emacs = Emacs
