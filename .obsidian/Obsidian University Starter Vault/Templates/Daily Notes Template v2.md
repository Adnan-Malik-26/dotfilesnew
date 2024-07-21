<div data-timeline="{{date:DDD}}"></div>

![Image](https://biblia.com/verseoftheday/image/{{date:YYYY-MM-DD}})


> [!memento-mori]+ Memento Mori
> ```dataviewjs
> const today = dv.date('{{date:YYYY-MM-DD}}')
> const endOfYear = {
> year: today.year,
> }
> 
> const lifespan = { year: 80 }
> const birthday = DateTime.fromObject({
> year: 1980,
> month: 1,
> day: 1
> });
> 
> const deathday = birthday.plus(lifespan)
> function progress(type) {
> let value;
> switch(type) {
> case "lifespan":
> value = (today.year - birthday.year) / lifespan.year * 100;
> break;
> }
> 
> return `<progress value="${parseInt(value)}" max="100"></progress> &nbsp;&nbsp; ${parseInt(value)} %`
> 
> }
> 
> dv.span(`
> ${progress("lifespan")}
> `)
> 
> ```

> [!reading] Bible Reading
> ```tasks
> due {{date:YYYY-MM-DD}}
> tags includes #biblereading
> hide tags
> short mode
> ```

> [!todo]+ Tasks
> ```tasks
> not done
> (due on or before {{date:YYYY-MM-DD}}) OR (scheduled on or before {{date:YYYY-MM-DD}})
> filename does not include Chronological Bible Reading Plan
> short mode
> ```

> [!habits]+ Habits
> - [ ] Writing
> - [ ] Reading
> - [ ] Planning

### Daily Questions

%%dailyquestions%%

### Wins

### Journal Entries

### Gratitude

### Links

### Review
