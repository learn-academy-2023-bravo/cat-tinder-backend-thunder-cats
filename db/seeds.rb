cats = [
    {
    name:"Nermal",
    age:5,
    breed:"Tabby",
    hobbies:"Being emotionally dependent on other cats",
    image:"https://www.istockphoto.com/photo/funny-british-shorthair-cat-portrait-looking-shocked-or-surprised-gm1361394182-433852083?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcats&utm_term=cats%3A%3A%3A"
    },

    {
    name:"Arlene",
    age:2,
    breed:"Russian Blue",
    hobbies:"Chasing birds because I'm insecure",
    image:"https://www.istockphoto.com/photo/bengal-cat-looking-up-isolated-on-white-gm1413985191-462863902?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcats&utm_term=cats%3A%3A%3A"
    },

    {
    name:"Garfield",
    age:7,
    breed:"Tabby Persian",
    hobbies:"Eating pizza, eating ice cream, napping and procrastinating my life away",
    image:"https://www.istockphoto.com/photo/ginger-cat-portrait-gm1355950595-430261448?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcats&utm_term=cats%3A%3A%3A"
    },

    {
    name:"Ivy",
    age:6,
    breed:"Sphynx",
    hobbies:"Chasing after mice to impress other cats",
    image:"https://www.istockphoto.com/photo/selective-focus-small-gray-domestic-cat-sphynx-close-up-and-copy-space-gm1356569858-430706798?phrase=sphynx"
    },

     ]

    cats.each do |cat|
        Cat.create cat
        puts"creating cat #{cat}"
    end