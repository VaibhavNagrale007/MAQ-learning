import React, {useEffect, useState} from 'react';
import './index.css';

const Header = (() => {
    // make state first
    const [theme, setTheme ] = useState('light');
    // second make toggle button
    const toggleTheme = (() => {
        if (theme === 'light'){
            setTheme('dark');
        } else {
            setTheme('light');
        }
    });
    // third make react hook
    useEffect(() => {
        // to keep theme across page refresh
        // localStorage.setItem('theme', theme);
        document.body.className = theme;
    }, [theme]);

    return (
        <div className={'App ${theme}'}>
            <button onClick={toggleTheme}>Toggle Theme</button>
            <h1>Task List</h1>
        </div>
    )
});
export default Header;