/******  *******/
document.addEventListener('fetchit:success', () => {
    setTimeout(() => {
        const currentModal = Fancybox.getInstance();

        if (currentModal) {
            currentModal.on('destroy', () => {
                Fancybox.show([{ src: '#thank-modal', type: 'inline' }]);
            });

            currentModal.close();
        } else {
            Fancybox.show([{ src: '#thank-modal', type: 'inline' }]);
        }
    }, 1000);
});
/******  *******/
