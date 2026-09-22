/*
class Blog extends Model {}
Blog.init({
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  author: {
    type: DataTypes.STRING
  },
  url: {
    type: DataTypes.STRING,
    allowNull: false
  },
  title: {
    type: DataTypes.STRING,
    allowNull: false
  },
  likes: {
    type: DataTypes.INTEGER,
    defaultValue: 0
  }
}, {
  sequelize,
  underscored: true,
  timestamps: false,
  modelName: 'blog'
})
*/
CREATE TABLE blogs (
    id SERIAL PRIMARY KEY,
    author TEXT,
    url TEXT NOT NULL,
    title TEXT NOT NULL,
    likes INTEGER DEFAULT 0
)

INSERT INTO blogs (author, url, title, likes) 
VALUES (
    'Scott Lamb', 
    'https://medium.com/blog/how-and-when-does-your-writing-show-up-inside-ai-chatbots-1d2dec42f26d',
    'How (and when) does your writing show up inside AI chatbots?',
    400)

INSERT INTO blogs (author, url, title, likes) 
VALUES (
    'The Medium Newsletter', 
    'http://medium.com/blog/how-ai-is-changing-design-2c27a835bc41',
    'How AI is changing design',
    503)
