# چرا Claude Code کامپیوترت رو کند می‌کنه؟ ساب‌ایجنت‌ها و یه خط راه‌حل

فایلِ ویدیوی کوتاهِ «چرا Claude Code کامپیوترت رو کند می‌کنه؟» از میکرولرن.
Claude Code یه کار بزرگ رو بین چند تا ساب‌ایجنت (Sub-agent) تقسیم می‌کنه. فکر کردن روی سرورهای Anthropic انجام می‌شه، ولی هر ساب‌ایجنت فایل‌هات رو می‌خونه و دستورهاش رو روی کامپیوتر خودت اجرا می‌کنه؛ پس چند تا ایجنت با هم یعنی چند تا تست، آموزش مدل یا رندرِ همزمان روی CPU و RAM و GPU تو.

- آپارات: https://www.aparat.com/v/guiuy3x
- یوتیوب (Microlearn AI Plus): https://youtube.com/shorts/uUL7Xm87NOE

## خطی که باید توی CLAUDE.md بنویسی
این چند خط رو به فایل `CLAUDE.md` پروژه‌ت (یا `~/.claude/CLAUDE.md` برای همهٔ پروژه‌ها) اضافه کن:

```markdown
## Sub-agents
- Use at most 2 sub-agents at a time.
- Never run heavy jobs (test suites, builds, model training, video rendering) in parallel; run them one after another.
```

به فارسی: حداکثر دو تا ساب‌ایجنت با هم، و هیچ کار سنگینی رو همزمان اجرا نکن.

## پیش‌نیازها
- آشنایی اولیه با Claude Code

کانال میکرولرن رو دنبال کنید.
